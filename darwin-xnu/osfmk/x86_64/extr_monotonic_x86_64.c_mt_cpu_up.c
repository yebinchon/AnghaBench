
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_data_t ;
typedef int boolean_t ;


 int FALSE ;
 int core_up (int *) ;
 int ml_set_interrupts_enabled (int ) ;

void
mt_cpu_up(cpu_data_t *cpu)
{
 boolean_t intrs_en;
 intrs_en = ml_set_interrupts_enabled(FALSE);
 core_up(cpu);
 ml_set_interrupts_enabled(intrs_en);
}
