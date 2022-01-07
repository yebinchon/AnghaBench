
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unix_sighandler_quit ;

__attribute__((used)) static void frontend_unix_set_signal_handler_state(int value)
{
   unix_sighandler_quit = value;
}
