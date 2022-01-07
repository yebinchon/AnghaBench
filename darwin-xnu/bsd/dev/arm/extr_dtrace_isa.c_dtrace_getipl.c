
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ml_at_interrupt_context () ;

int
dtrace_getipl(void)
{





 return (ml_at_interrupt_context() ? 1 : 0);
}
