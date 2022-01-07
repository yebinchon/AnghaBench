
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linux_stdin_claimed ;

bool linux_terminal_grab_stdin(void *data)
{
   return linux_stdin_claimed;
}
