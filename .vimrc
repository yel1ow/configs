call plug#begin('~/.vim/plugged')
"filesystem tree
Plug 'scrooloose/nerdtree'
"autocomplete
Plug 'Valloric/YouCompleteMe'
"pairs
Plug 'jiangmiao/auto-pairs'
"git +-+-
Plug 'airblade/vim-gitgutter'
"search
Plug 'kien/ctrlp.vim'
"move
Plug 'easymotion/vim-easymotion'
"colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark
set number
set tabstop=4
set hlsearch
set incsearch
syntax on
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
