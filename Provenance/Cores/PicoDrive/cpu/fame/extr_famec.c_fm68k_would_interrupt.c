
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interrupt_chk__ () ;

int fm68k_would_interrupt(void)
{
 return interrupt_chk__();
}
