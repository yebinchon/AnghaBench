
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VALGRIND_PRINTF_BACKTRACE (char*) ;
 int abort () ;
 int exit (int) ;
 int unix_sighandler_quit ;

__attribute__((used)) static void frontend_unix_sighandler(int sig)
{



   (void)sig;
   unix_sighandler_quit++;
   if (unix_sighandler_quit == 1) {}
   if (unix_sighandler_quit == 2) exit(1);

   if (unix_sighandler_quit >= 3) abort();
}
