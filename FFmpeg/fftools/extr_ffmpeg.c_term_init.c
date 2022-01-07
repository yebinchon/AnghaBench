
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_lflag; int c_cflag; int* c_cc; int c_oflag; } ;
typedef int PHANDLER_ROUTINE ;


 int BRKINT ;
 int CS8 ;
 int CSIZE ;
 scalar_t__ CtrlHandler ;
 int ECHO ;
 int ECHONL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int INLCR ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGXCPU ;
 int SIG_IGN ;
 int SetConsoleCtrlHandler (int ,int ) ;
 int TCSANOW ;
 int TRUE ;
 size_t VMIN ;
 size_t VTIME ;
 struct termios oldtty ;
 int restore_tty ;
 int run_as_daemon ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 scalar_t__ stdin_interaction ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

void term_init(void)
{
    signal(SIGINT , sigterm_handler);
    signal(SIGTERM, sigterm_handler);
}
