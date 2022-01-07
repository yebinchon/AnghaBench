
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_mask; scalar_t__ sa_flags; } ;


 int SIGTERM ;
 int exit (int) ;
 int exit_process ;
 int sigaction (int ,struct sigaction*,int ) ;
 int sigemptyset (int *) ;
 int twarn (char*) ;

__attribute__((used)) static void
set_sig_handler()
{
    struct sigaction sa;

    sa.sa_flags = 0;
    int r = sigemptyset(&sa.sa_mask);
    if (r == -1) {
        twarn("sigemptyset()");
        exit(111);
    }


    sa.sa_handler = exit_process;
    r = sigaction(SIGTERM, &sa, 0);
    if (r == -1) {
        twarn("sigaction(SIGTERM)");
        exit(111);
    }
}
