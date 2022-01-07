
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int ml_set_interrupts_enabled (int ) ;

void ml_init_interrupt(void)
{
 (void) ml_set_interrupts_enabled(TRUE);
}
