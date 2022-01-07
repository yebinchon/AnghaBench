
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_flags; int sa_handler; int * sa_sigaction; } ;


 int SA_RESTART ;
 int SIGINT ;
 int SIGTERM ;
 int frontend_unix_sighandler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void frontend_unix_install_signal_handlers(void)
{
   struct sigaction sa;

   sa.sa_sigaction = ((void*)0);
   sa.sa_handler = frontend_unix_sighandler;
   sa.sa_flags = SA_RESTART;
   sigemptyset(&sa.sa_mask);
   sigaction(SIGINT, &sa, ((void*)0));
   sigaction(SIGTERM, &sa, ((void*)0));
}
