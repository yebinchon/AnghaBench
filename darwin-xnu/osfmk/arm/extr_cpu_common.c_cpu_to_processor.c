
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * processor_t ;
struct TYPE_3__ {int * cpu_processor; } ;
typedef TYPE_1__ cpu_data_t ;


 TYPE_1__* cpu_datap (int) ;

processor_t
cpu_to_processor(int cpu)
{
 cpu_data_t *cpu_data = cpu_datap(cpu);
 if (cpu_data != ((void*)0))
  return cpu_data->cpu_processor;
 else
  return ((void*)0);
}
