\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2025/01/01 v1.2 Note Version]

% 基础类加载
\LoadClass[
    a4paper,
    10pt
]{article}

% 页面布局
\RequirePackage{geometry}
\geometry{
    a4paper,
    centering,
    top=0.7cm,
    bottom=0cm,
    left=0.8cm,
    right=0.8cm,
    includefoot
}

% 必要宏包
\RequirePackage{amsmath, amssymb, amsthm, ctex}
\RequirePackage{longtable, makecell, multicol, multirow}
\RequirePackage{enumitem, graphicx, hyperref}
\RequirePackage{multicol, xcolor}
\RequirePackage{titlesec}

% 段落格式
\setlength{\parindent}{0pt}
\setlength{\parskip}{1pt}
\setlength{\topsep}{-2pt}
\setlength{\partopsep}{-2pt}
\setlength{\footskip}{0pt}

% 章节格式
\titleformat{\section}
  {\fontsize{10pt}{10pt}\bfseries}
  {\thesection}{1em}{}

\titleformat{\subsection}
  {\fontsize{9pt}{9pt}\bfseries}
  {\thesubsection}{1em}{}

\titleformat{\subsubsection}
  {\fontsize{9pt}{9pt}\bfseries}
  {\thesubsubsection}{1em}{}

\titlespacing*{\section}{0pt}{-3pt}{-3pt}
\titlespacing*{\subsection}{0pt}{-2pt}{-2pt}
\titlespacing*{\subsubsection}{0pt}{-2pt}{-2pt}

% 常用数学符号
\newcommand{\E}{\mathbb{E}}
\newcommand{\Prob}{\mathbb{P}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\F}{\mathbb{F}}

% 常用花体字母
\DeclareMathAlphabet{\CMcal}{OMS}{cmsy}{m}{n}
\newcommand{\Acal}{\CMcal{A}}
\newcommand{\Bcal}{\CMcal{B}}
\newcommand{\Ccal}{\CMcal{C}}
\newcommand{\Dcal}{\CMcal{D}}
\newcommand{\Fcal}{\CMcal{F}}
\newcommand{\Gcal}{\CMcal{G}}
\newcommand{\Hcal}{\CMcal{H}}
\newcommand{\Ical}{\CMcal{I}}
\newcommand{\Jcal}{\CMcal{J}}
\newcommand{\Kcal}{\CMcal{K}}
\newcommand{\Lcal}{\CMcal{L}}
\newcommand{\Mcal}{\CMcal{M}}
\newcommand{\Ncal}{\CMcal{N}}
\newcommand{\Ocal}{\CMcal{O}}
\newcommand{\Pcal}{\CMcal{P}}
\newcommand{\Qcal}{\CMcal{Q}}
\newcommand{\Rcal}{\CMcal{R}}
\newcommand{\Scal}{\CMcal{S}}
\newcommand{\Tcal}{\CMcal{T}}
\newcommand{\Ucal}{\CMcal{U}}
\newcommand{\Vcal}{\CMcal{V}}
\newcommand{\Wcal}{\CMcal{W}}
\newcommand{\Xcal}{\CMcal{X}}
\newcommand{\Ycal}{\CMcal{Y}}
\newcommand{\Zcal}{\CMcal{Z}}

% 常用希腊字母
\newcommand{\eps}{\varepsilon}
\newcommand{\lb}{\langle}
\newcommand{\rb}{\rangle}

% 定义常用函数
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\tr}{tr}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\adj}{adj}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\argmin}{argmin}
\DeclareMathOperator{\argmax}{argmax}
\DeclareMathOperator{\Log}{Log}
\DeclareMathOperator{\Arg}{Arg}
\DeclareMathOperator{\Mat}{Mat}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\Ker}{ker}
\DeclareMathOperator{\Ima}{Im}
\DeclareMathOperator{\Cov}{Cov}
\DeclareMathOperator{\Var}{Var}
\DeclareMathOperator{\Span}{span}
\DeclareMathOperator{\Ov}{Ov}
\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\hcf}{hcf}


% 自定义符号
\newcommand{\np}{$^{^{^\ominus}}$}
\newcommand{\bij}{\stackrel{\sim}{\to}}
\newcommand{\oto}{\hookrightarrow}
\newcommand{\onto}{\twoheadrightarrow}
\newcommand{\normal}{\lhd}
\newcommand{\ideal}{\unlhd}
\newcommand{\iid}{\stackrel{i.i.d.}{\sim}}
\newcommand{\as}{\stackrel{a.s.}{\sim}}
\newcommand{\bvec}[1]{\overrightarrow{#1}}

% 自定义颜色
\definecolor{blue}{HTML}{336195}
\definecolor{red}{HTML}{b11b2d}
\definecolor{green}{HTML}{3a7753}
\definecolor{brown}{HTML}{542a1c}

\newcommand{\imp}[1]{\textbf{\textcolor{red}{#1}}}
\newcommand{\ok}[1]{\textbf{\textcolor{green}{#1}}}
\newcommand{\ps}[1]{\textcolor{brown}{#1}}
\newcommand{\info}[1]{\textcolor{gray}{#1}}

% 定理环境样式
\newtheoremstyle{mytheoremstyle}%
    {0pt}{0pt}{}{}{\bfseries\color{blue}}{}{0pt}{}

% 应用自定义定理样式
\theoremstyle{mytheoremstyle}
\newtheorem{MyThm}{} 

% 自定义环境
\newenvironment{MyTh}[1]
    {%
        \leavevmode
        \textbf{\color{blue}#1:\hspace{-0.2em}}
    }
    {%
        \vspace{0pt}
    }

% 标题格式
\renewcommand{\maketitle}{
    \vspace{-5pt}
    \begin{center}
        \normalsize\textbf{\@title}
    \end{center}
    \vspace{-10pt}
}

% 设置字体
\RequirePackage{fontspec}
\setmainfont{Cambria}
\RequirePackage{unicode-math}
\setmathfont{Latin Modern Math}

% 页眉页脚
\RequirePackage{fancyhdr}
\fancyfoot[C]{Copyright \textcopyright\ Jingren (Jasper) Zhou | Page \thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% 初始化设置
\AtBeginDocument{
    \fontsize{7pt}{6pt}\selectfont
    \setlist[enumerate]{itemsep=-2pt, topsep=-2pt, leftmargin=15pt, after=\vspace{4pt}}
}

\endinput