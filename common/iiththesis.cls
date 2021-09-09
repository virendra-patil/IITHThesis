%%
%% This is file `iiththesis.cls',
%% generated with the docstrip utility,
%% customized by Utpal Bora <cs14mtech11017@iith.ac.in> in v1.3.
%%
%% DOCUMENTATION:
%% See https://github.com/utpalbora/IITHThesis
%%
%% IMPORTANT NOTICE:
%% You are *not* allowed to modify this file.
%% You are allowed to distribute this file.
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iiththesis}
         [2021/09/02 v1.3 IIT Hyderabad Thesis class]
\def\@classname{iiththesis}
\RequirePackage[table,svgnames]{xcolor}
\RequirePackage{setspace}
\RequirePackage{array}
\RequirePackage{tikz}
\RequirePackage{ifxetex}
\RequirePackage{xkeyval}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{\ifnum\month>10 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>10 January\else\ifnum\month>8 November
  \else\ifnum\month>6 September\else May\fi\fi\fi}
\def\adviser#1{\gdef\@adviser{#1}}
\def\addradviser#1{\gdef\@addradviser{#1}}
\def\chair#1{\gdef\@chair{#1}}
\def\addrchair#1{\gdef\@addrchair{#1}}
\def\external#1{\gdef\@external{#1}}
\def\addrexternal#1{\gdef\@addrexternal{#1}}
\def\internal#1{\gdef\@internal{#1}}
\def\addrinternal#1{\gdef\@addrinternal{#1}}
\def\coguide#1{\gdef\@coguide{#1}}
\def\addrcoguide#1{\gdef\@addrcoguide{#1}}
\def\rollno#1{\gdef\@rollno{#1}}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}

\newcommand*{\iith}{IIT Hyderabad}
\newcommand*{\iithfull}{Indian Institute of Technology Hyderabad}
\newcommand*{\frontmatter}{\pagenumbering{roman}}
\newcommand*{\mainmatter}{\pagenumbering{arabic}}
\newcommand*{\makeloa}{}
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makelos}{}
\newcommand*{\begincmd}{
  \doublespacing
  \frontmatter
  \maketitlepage
%\makecopyrightpage
  \makedeclarepage
  \makecertificate
  \makeacknowledgements
  \makededication
  \makeabstract
  \tableofcontents
  \clearpage
  %\phantomsection\addcontentsline{toc}{chapter}{Nomenclature}
  \makelot
  \clearpage
  \makelof
  \clearpage
  \makeloa
  \clearpage
  \makelos
  \clearpage\mainmatter
}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\long\def\dedication#1{\gdef\@dedication{#1}}

\define@choicekey*+{\@classname.cls}{department}[\val\position]{%
  cse, ee, mae, che, cc, es, ce, ai, bme, bt, msme, phy, math, chy,
la, des, em}[cse]{%
  \ifcase\position\relax %cse
    \newcommand{\department}{Computer Science and Engineering}%
  \or %ee
    \newcommand{\department}{Electrical Engineering}%
  \or %mae
    \newcommand{\department}{Mechanical and Aerospace Engineering}%
  \or %che
    \newcommand{\department}{Chemical Engineering}%
  \or %cc
    \newcommand{\department}{Climate Change}%
  \or %es
    \newcommand{\department}{Engineering Science}%
  \or %ce
    \newcommand{\department}{Civil Engineering}%
  \or %ai
    \newcommand{\department}{Artificial Intelligence}%
  \or %mbe
    \newcommand{\department}{Biomedical Engineering}%
  \or %bt
    \newcommand{\department}{Biotechnology}%
  \or %msme
    \newcommand{\department}{Materials Science and Metallurgical Engineering}%
  \or %phy
    \newcommand{\department}{Physics}%
  \or %math
    \newcommand{\department}{Mathematics}%
  \or %chy
    \newcommand{\department}{Chemistry}%
  \or %la
    \newcommand{\department}{Liberal Arts}%
  \or %des
    \newcommand{\department}{Design}%
  \or %em
    \newcommand{\department}{Entrepreneurship and Management}%
  \fi
}{%
  \ClassError{\@classname}{The option department must be one of
    cse, ee, mae, che, cc, es, ce, ai, bme, bt, msme, phy, math,
  chy, la, des, em}
}

\define@choicekey*+{\@classname.cls}{degree}[\val\position]{%
btech, bdes, mtech, mdes, msc, mds, mphil, phd}[phd]{%
  \ifcase\position\relax %btech
    \newcommand{\@degree}{Bachelor of Technology}%
  \or %bdes
    \newcommand{\@degree}{Bachelor of Design}%
  \or %mtech
    \newcommand{\@degree}{Master of Technology}%
  \or %mdes
    \newcommand{\@degree}{Master of Design}%
  \or %msc
    \newcommand{\@degree}{Master of Science}%
  \or %mds
    \newcommand{\@degree}{Master in Development Studies}%
  \or %mphil
    \newcommand{\@degree}{Master of Philosophy}%
  \or %phd
    \newcommand{\@degree}{Doctor of Philosophy}%
  \fi
}{%
  \ClassError{\@classname}{The option degree must be one of
    btech, bdes, mtech, mdes, msc, mds, mphil, phd}
}

\define@choicekey*+{\@classname.cls}{book}[\val\position]{%
thesis, report, techreport}[thesis]{%
  \ifcase\position\relax %thesis
    \newcommand{\@book}{Thesis}%
  \or %report
    \newcommand{\@book}{Report}%
  \or %techreport
    \newcommand{\@book}{Tech Report}%
  \fi
}{%
  \ClassError{\@classname}{The option book must be one of
  thesis, report, techreport}
}
\presetkeys{\@classname.cls}{department}{}
\presetkeys{\@classname.cls}{degree}{}
\presetkeys{\@classname.cls}{book}{}
\ProcessOptionsX<\@classname.cls>

\newcommand{\maketitlepage}{{
  \thispagestyle{empty}
  \sc
  \vspace*{0in}
  \begin{center}
    \bf
    {\LARGE \@title}
  \end{center}
  \normalfont
  \vspace{.3in}
  \begin{center}
    \@author
  \end{center}
  \vspace{.3in}
  \begin{center}
    A \@book ~Submitted to \\
    \iithfull\ \\
    In Partial Fulfillment of the Requirements for \\
    The Degree of \@degree \\
  \end{center}
  \vspace{.3in}
  \begin{center}
%  \includegraphics{logo}
    \definecolor{circleorange}{rgb}{1,0.17,0.08}
    \definecolor{darkorange}{rgb}{1,0.27,0.1}
    \definecolor{orange2}{rgb}{1,0.5,0.15}
    \definecolor{orange3}{rgb}{1,0.65,0.25}
    \definecolor{yellow1}{rgb}{0.95,0.77,0.2}
    \definecolor{blue1}{rgb}{0.18,0.19,0.57}
    \begin{tikzpicture}[scale=0.4,every node/.style={transform shape}]
      \draw [fill=circleorange,circleorange] (5,10) circle (1.15);
      \fill [darkorange] (5.06,8) -- (5.06,2) -- (7.3,1.2) -- (7.3,8.8) -- (5.06,8);
      \fill [darkorange] (4.94,8) -- (4.94,2) -- (2.7,1.2) -- (2.7,8.8) -- (4.94,8);
      \fill [orange2]    (7.4,8.4) -- (7.4,1.6) -- (8.2,1.2) -- (8.2,8.8) -- (7.4,8.4);
      \fill [orange2]    (2.6,8.4) -- (2.6,1.6) -- (1.8,1.2) -- (1.8,8.8) -- (2.6,8.4);
      \fill [orange3]    (8.3,8.4) -- (8.3,1.6) -- (9.0,1.2) -- (9.0,8.8) -- (8.3,8.4);
      \fill [orange3]    (1.7,8.4) -- (1.7,1.6) -- (1.0,1.2) -- (1.0,8.8) -- (1.7,8.4);
      \fill [yellow1]    (9.1,8.4) -- (9.1,1.6) -- (9.7,1.2) -- (9.7,8.8) -- (9.1,8.4);
      \fill [yellow1]    (0.9,8.4) -- (0.9,1.6) -- (0.3,1.2) -- (0.3,8.8) -- (0.9,8.4);
      \ifxetex
        \node [scale=2.1] at (5,-0.1)  {   {\bf {\nakulafont \textcolor{blue1}{भारतीय प्रौद्योगिकी संस्थान हैदराबाद }} } };
        \node [scale=1.8] at (5,-1.2) {   {\bf {\liberationsansfont \textcolor{blue1}{\iithfull}}} };
        \renewcommand\rmdefault{lmr}
        \renewcommand\sfdefault{lmss}
        \renewcommand\ttdefault{lmtt}
      \fi
    \end{tikzpicture}
  \end{center}
  \vspace{.3in}
  \begin{center}
    \@deptpref  ~\department \\
  \vspace{.3in}
  \end{center}

  \vspace{.3in}
  \begin{center}
    \@submitted
  \end{center}
  \vspace*{.5in}
  \begin{center}
  \begin{small}
    {\bf \copyright{ }\the\year{} by \@author} \\
    {\bf All rights reserved}
  \end{small}
  \end{center}
  \hypersetup{%
    pdfauthor={\@author},
    pdftitle={\@title},
    pdfsubject={\@degree~\@book},
    pdfcreator={LaTeX with \@classname.cls}}%
  \clearpage
  }}

\newcommand*{\makecopyrightpage}{
  \thispagestyle{empty}
  \vspace*{0in}
  \begin{center}
    {\bf \copyright\ Copyright by \@author, \number\year.} \\
    %{\bf \copyright{ }\the\year{} by \@author} \\
    {\bf All rights reserved}
  \end{center}
  \clearpage
}

\newcommand*{\makedeclarepage}{
  \thispagestyle{empty}
  \vspace*{0in}
  %\phantomsection\addcontentsline{toc}{section}{Declaration}
  \begin{center}
    \bf
    {\Large Declaration}
  \end{center}
  \onehalfspacing
  I declare that this written submission represents my ideas in my own words,
  and where ideas or words of others have been included, I have adequately cited
  and referenced the original sources. I also declare that I have adhered to all
  principles of academic honesty and integrity and have not misrepresented or
  fabricated or falsified any idea/data/fact/source in my submission.
  I understand that any violation of the above will be a cause for disciplinary
  action by the Institute and can also evoke penal action from the sources that
  have thus not been properly cited, or from whom proper permission has not been
  taken when needed.

  \vspace*{0.3in}

  \begin{flushright}
    --------------------------\\
    (Signature) \\
    \vspace*{0.3in}
    {\bf \@author } \\
    ---------------------------\\
    (Name) \\
    \vspace*{0.3in}
    {\bf \MakeUppercase{\@rollno }} \\
    -----------------------------\\
    (Roll No.) \\
  \end{flushright}
  \clearpage
}

\newpage

\newcommand*{\makecertificate}{
  \thispagestyle{empty}
  \vspace*{0in}
  %\phantomsection\addcontentsline{toc}{section}{Approval Sheet}
  \begin{center}
    \bf
    {\Large Approval Sheet}
  \end{center}

  This \@book ~entitled \textbf{\@title} by \@author ~is approved for the degree of \@degree ~from \iith.

  \ifx\@external\undefined
  \else
    \vspace*{0.2in}
    \begin{flushright}
      --------------------------\\
      (\@external) Examiner \\
      \@addrexternal\\
    \end{flushright}
  \fi

  \ifx\@internal\undefined
  \else
    \vspace*{0.2in}
    \begin{flushright}
      --------------------------\\
      (\@internal) Examiner \\
      \@addrinternal\\
    \end{flushright}
  \fi

%% Guide
  \vspace*{0.2in}
  \begin{flushright}
    --------------------------\\
    (\@adviser) Adviser \\
    \@addradviser
  \end{flushright}
  \vspace*{0.2in}
%% End of guide

%% Co-Guide
  \ifx\@coguide\undefined
  \else
    \vspace*{0.2in}
    \begin{flushright}
      --------------------------\\
      (\@coguide) Co-Adviser \\
      \@addrcoguide\\
    \end{flushright}
  \fi
%% End of co-guide

  \ifx\@chair\undefined
  \else
    \vspace*{0.2in}
    \begin{flushright}
      --------------------------\\
      (\@chair) Chairman \\
      \@addrchair \\
    \end{flushright}
  \fi

  \clearpage
}

\newpage

\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    %\phantomsection\addcontentsline{toc}{section}{Acknowledgements}
    \begin{center}
      \Large \textbf{Acknowledgements}
    \end{center}
    \@acknowledgements
    \clearpage
  \fi
}

\def\makededication{
  \ifx\@dedication\undefined
  \else
    \begin{center}
      \Large \textbf{Dedication}
    \end{center}
    \vspace*{1.5in}
    \begin{flushright}
      \@dedication
    \end{flushright}
    \clearpage
  \fi
}

\newcommand*{\makeabstract}{
  \newpage
  %\phantomsection\addcontentsline{toc}{section}{Abstract}
  \begin{center}
    \Large \textbf{Abstract}
  \end{center}
  \@abstract
  \clearpage
}

\DeclareOption{myorder}{
  \renewcommand*{\begincmd}{\doublespacing}}
\DeclareOption{lot}{\renewcommand*{\makelot}{
    \phantomsection\addcontentsline{toc}{section}{List of Tables}\listoftables}}
\DeclareOption{lof}{\renewcommand*{\makelof}{
    \phantomsection\addcontentsline{toc}{section}{List of Figures}\listoffigures}}
\DeclareOption{loa}{\renewcommand*{\makeloa}{
    \phantomsection\addcontentsline{toc}{section}{List of Algorithms}\listofalgorithms}}
\DeclareOption{los}{
  \renewcommand*{\makelos}{
    \RequirePackage[english]{nomencl}
    \makenomenclature
    \renewcommand{\nomname}{List of Symbols}
    % intoc adds to toc as chapter, we want as section
    \phantomsection\addcontentsline{toc}{section}{\nomname}
    \printnomenclature
  }
}

\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt,a4paper,oneside,openright]{report}

% imakeidx should go before hyperref and after report
\RequirePackage{imakeidx}
\makeindex[columns=3, title=Index, intoc]
% --ubora : DO NOT Change the following
% Putting hyperref before \LoadClass results in
% a known error regarding \maketitle already defined
\RequirePackage{hyperref}
\hypersetup{
  colorlinks,
  linkcolor={red!50!black},
  citecolor={green!50!black},
  %urlcolor={blue!80!black},
  urlcolor={magenta},
  anchorcolor={black},
  filecolor={cyan},
}

% --sbjoshi : DO NOT Change the following
% Putting this before \LoadClass results in
% a known error regardong \normalsize not defined
% Another fix is to commentout \normalsize part in
% fontspec-xetex.sty but can't ask all the users to do that
\ifxetex
\RequirePackage{fix-cm}
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\newfontfamily\nakulafont[Script=Devanagari,AutoFakeBold=2]{Nakula}
\newfontfamily\liberationfont{Liberation Sans Narrow}
\newfontfamily\liberationsansfont{Liberation Sans}
\fi
% -- sbjoshi end

\setlength{\oddsidemargin}{0.25in}
\setlength{\evensidemargin}{0.25in}
\setlength{\topmargin}{-.5in}
\setlength{\textheight}{9in}
\setlength{\textwidth}{6in}
\long\def\abstract#1{\gdef\@abstract{#1}}

\AtBeginDocument{\begincmd}

\endinput
%%
%% End of file `iiththesis.cls'.