
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDSKBMODE ;
 scalar_t__ ioctl (int ,int ,int) ;
 int linux_stdin_claimed ;
 int linux_terminal_flush () ;
 int oldKbmd ;

void linux_terminal_restore_input(void)
{
   if (oldKbmd == 0xffff)
      return;

   if (ioctl(0, KDSKBMODE, oldKbmd) < 0)
      return;

   linux_terminal_flush();
   oldKbmd = 0xffff;

   linux_stdin_claimed = 0;
}
