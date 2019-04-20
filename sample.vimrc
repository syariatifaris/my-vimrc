set number
" set cursorcolumn
set cursorline

syntax on
colorscheme onedark

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 expandtab
autocmd Filetype sh setlocal tabstop=4 shiftwidth=4 expandtab
" autocmd TextChanged,TextChangedI <buffer> silent write

set nocompatible              " be iMproved, required
filetype plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/syntastic'

Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

 Plugin 'leafgarland/typescript-vim'

" Plugin 'valloric/youcompleteme'

" Plugin 'bling/vim-airline'

Plugin 'yggdroot/indentline'

Plugin 'jiangmiao/auto-pairs'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'joshdick/onedark.vim'

Plugin 'rakr/vim-one'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F6> :bp<CR>
nnoremap <F7> :bn<CR>
nnoremap <F8> :bd<CR>
nnoremap ss :update<CR>

let g:ctrl_show_hidden = 1
set wildignore+=*/node_modules/*

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

set belloff=all
set iskeyword-=_
autocmd vimenter * NERDTree
