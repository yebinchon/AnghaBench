
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linux_stdin_claimed ;

void linux_terminal_claim_stdin(void)
{


   linux_stdin_claimed = 1;
}
