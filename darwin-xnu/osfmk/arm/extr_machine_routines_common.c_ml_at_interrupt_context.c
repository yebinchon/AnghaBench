
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int * cpu_int_state; } ;


 TYPE_1__* getCpuDatap () ;
 int ml_get_interrupts_enabled () ;

boolean_t
ml_at_interrupt_context(void)
{
 return (!ml_get_interrupts_enabled() && (getCpuDatap()->cpu_int_state != ((void*)0)));
}
