set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set undofile
set guifont=Bitstream\ Vera\ Sans\ Mono:h12

set incsearch
set showmatch
nnoremap <leader><space> :let @/=''<cr>
nnoremap <tab> %
vnoremap <tab> %

set laststatus=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
let &background = "dark"
set ruler
set nu
set autoindent
set hlsearch
set nowrap

syntax on

set nocompatible          " We're running Vim, not Vi!
filetype plugin indent on " Enable filetype-specific indenting and plugins

runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
end

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL

" strip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

augroup myfiletypes
  autocmd!
"  autocmd BufRead *.rhtml set filetype=html
  autocmd BufRead *.rake set filetype=ruby
  autocmd BufRead *.as set filetype=actionscript
  autocmd BufRead *.mxml set filetype=mxml
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
augroup END

"let g:fuzzy_ignore = "*.log"
"let g:fuzzy_matching_limit = 20
"let g:fuzzy_enumerating_limit = 20
"let g:fuzzy_ignore = "log/*;*.swf;*.cache;*.ttf;*.jpg;*.png;*/etc/*;*tmp/*;*/.svn/*;*/public/images/*;*/ufiles/*;*/.git/*;*/script/*;*/vendor/rails/*"
"let g:fuzzy_ceiling=10000
let mapleader = ","

" map <leader>t :FuzzyFinderTextMate<CR>
" map <leader>b :FuzzyFinderBuffer<CR>

set grepprg=ack
set grepformat=%f:%l:%m

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

map <leader>m :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Show_One_File = 1
let Tlist_Inc_Winwidth = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1



source ~/.vim/source/autotag.vim
