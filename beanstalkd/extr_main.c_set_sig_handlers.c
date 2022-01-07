
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_mask; scalar_t__ sa_flags; } ;


 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_IGN ;
 int enter_drain_mode ;
 int exit (int) ;
 int getpid () ;
 int handle_sigterm_pid1 ;
 int sigaction (int ,struct sigaction*,int ) ;
 int sigemptyset (int *) ;
 int twarn (char*) ;

__attribute__((used)) static void
set_sig_handlers()
{
    struct sigaction sa;

    sa.sa_handler = SIG_IGN;
    sa.sa_flags = 0;
    int r = sigemptyset(&sa.sa_mask);
    if (r == -1) {
        twarn("sigemptyset()");
        exit(111);
    }

    r = sigaction(SIGPIPE, &sa, 0);
    if (r == -1) {
        twarn("sigaction(SIGPIPE)");
        exit(111);
    }

    sa.sa_handler = enter_drain_mode;
    r = sigaction(SIGUSR1, &sa, 0);
    if (r == -1) {
        twarn("sigaction(SIGUSR1)");
        exit(111);
    }




    if (getpid() == 1) {
        sa.sa_handler = handle_sigterm_pid1;
        r = sigaction(SIGTERM, &sa, 0);
        if (r == -1) {
            twarn("sigaction(SIGTERM)");
            exit(111);
        }
    }
}
