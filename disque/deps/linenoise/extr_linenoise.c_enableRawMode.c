
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_lflag; int* c_cc; int c_cflag; int c_oflag; } ;


 int BRKINT ;
 int CS8 ;
 int ECHO ;
 int ENOTTY ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int INPCK ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int STDIN_FILENO ;
 int TCSAFLUSH ;
 size_t VMIN ;
 size_t VTIME ;
 int atexit (int ) ;
 int atexit_registered ;
 int errno ;
 int isatty (int ) ;
 int linenoiseAtExit ;
 struct termios orig_termios ;
 int rawmode ;
 int tcgetattr (int,struct termios*) ;
 scalar_t__ tcsetattr (int,int ,struct termios*) ;

__attribute__((used)) static int enableRawMode(int fd) {
    struct termios raw;

    if (!isatty(STDIN_FILENO)) goto fatal;
    if (!atexit_registered) {
        atexit(linenoiseAtExit);
        atexit_registered = 1;
    }
    if (tcgetattr(fd,&orig_termios) == -1) goto fatal;

    raw = orig_termios;


    raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);

    raw.c_oflag &= ~(OPOST);

    raw.c_cflag |= (CS8);


    raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);


    raw.c_cc[VMIN] = 1; raw.c_cc[VTIME] = 0;


    if (tcsetattr(fd,TCSAFLUSH,&raw) < 0) goto fatal;
    rawmode = 1;
    return 0;

fatal:
    errno = ENOTTY;
    return -1;
}
