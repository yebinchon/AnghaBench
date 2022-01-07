
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ get_preemption_level () ;
 scalar_t__ ml_get_interrupts_enabled () ;

boolean_t
preemption_enabled(void)
{
 return (get_preemption_level() == 0 && ml_get_interrupts_enabled());
}
