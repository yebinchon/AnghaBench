
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int autosusp_signal ;
 int getpid () ;
 int kill (int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void autosusp_timeout_handler(int cause, siginfo_t *how, void *ucontext)
{
   (void)how; (void)ucontext; (void)cause;
   printf("Sending signal %d\n", autosusp_signal);
   kill(getpid(), autosusp_signal);
}
