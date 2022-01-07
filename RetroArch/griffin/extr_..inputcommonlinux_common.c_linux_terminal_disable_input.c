
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; } ;
struct sigaction {int sa_flags; int sa_mask; int sa_handler; TYPE_1__ member_0; } ;


 int KDSKBMODE ;
 int K_MEDIUMRAW ;
 int SA_RESETHAND ;
 int SA_RESTART ;
 int SIGABRT ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGQUIT ;
 int SIGSEGV ;
 int atexit (int ) ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int isatty (int ) ;
 int linux_terminal_flush () ;
 int linux_terminal_init () ;
 int linux_terminal_restore_input ;
 int linux_terminal_restore_signal ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

bool linux_terminal_disable_input(void)
{
   struct sigaction sa = {{0}};


   if (!isatty(0))
      return 0;

   if (!linux_terminal_init())
      return 0;

   if (ioctl(0, KDSKBMODE, K_MEDIUMRAW) < 0)
   {
      linux_terminal_flush();
      return 0;
   }

   sa.sa_handler = linux_terminal_restore_signal;
   sa.sa_flags = SA_RESTART | SA_RESETHAND;
   sigemptyset(&sa.sa_mask);



   sigaction(SIGABRT, &sa, ((void*)0));
   sigaction(SIGBUS, &sa, ((void*)0));
   sigaction(SIGFPE, &sa, ((void*)0));
   sigaction(SIGILL, &sa, ((void*)0));
   sigaction(SIGQUIT, &sa, ((void*)0));
   sigaction(SIGSEGV, &sa, ((void*)0));

   atexit(linux_terminal_restore_input);

   return 1;
}
