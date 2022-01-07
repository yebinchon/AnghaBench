
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; int sa_mask; int sa_handler; } ;


 int SA_NODEFER ;
 int SA_RESETHAND ;
 int SA_SIGINFO ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGINT ;
 int SIGSEGV ;
 int SIGTERM ;
 int sigShutdownHandler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sigsegvHandler ;

void setupSignalHandlers(void) {
    struct sigaction act;



    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    act.sa_handler = sigShutdownHandler;
    sigaction(SIGTERM, &act, ((void*)0));
    sigaction(SIGINT, &act, ((void*)0));
    return;
}
