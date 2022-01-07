
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_data_t ;


 int core_idle (int *) ;

void
mt_cpu_idle(cpu_data_t *cpu)
{
 core_idle(cpu);
}
