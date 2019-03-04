set nocompatible
filetype off
syntax enable
set backspace=indent,eol,start
set nu

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
execute pathogen#infect()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'
map <C-n> :NERDTreeToggle<CR>

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" For more information: https://vimawesome.com/plugin/fugitive-vim
Plugin 'tpope/vim-fugitive'

" For more information:  https://vimawesome.com/plugin/youcompleteme
Plugin 'davidhalter/jedi-vim'
let g:jedi#completions_enabled = 1 
let g:jedi#show_call_signatures = "1"


" For more information: https://vimawesome.com/plugin/surround-vim 
" mostly useful for html and xml 
Plugin 'tpope/vim-surround'

"For more information: https://vimawesome.com/plugin/syntastic
Plugin 'scrooloose/syntastic'
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_python_pep8_args='--max-line-length=120'


"For more information: https://vimawesome.com/plugin/rope-vim 
"Good documentation: https://github.com/python-rope/ropevim
Plugin 'klen/rope-vim'

let g:virtualenv_auto_activate = 1
let g:ropevim_loaded = 1 

Plugin 'elzr/vim-json'

" Now we can turn our filetype functionality back on
filetype plugin indent on
autocmd BufWritePre *.py :%s/\s\+$//e

" https://github.com/mgedmin/python-imports.vim
Plugin 'mgedmin/python-imports.vim'

Plugin 'matchit.zip'
filetype plugin on

Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-y>'
let g:html_indent_inctags = "html,body,head,tbody"

Plugin 'maksimr/vim-jsbeautify'
".vimrc
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Plugin 'dbsr/vimpy'
" let g:vimpy_prompt_resolve = 1
" let g:vimpy_remove_unused = 1
