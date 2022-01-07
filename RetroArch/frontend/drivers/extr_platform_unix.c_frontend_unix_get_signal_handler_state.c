
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unix_sighandler_quit ;

__attribute__((used)) static int frontend_unix_get_signal_handler_state(void)
{
   return (int)unix_sighandler_quit;
}
