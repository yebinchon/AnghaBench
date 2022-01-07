
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpu_data_t ;
struct TYPE_2__ {int * cpu_data_vaddr; } ;


 TYPE_1__* CpuDataEntries ;
 int MAX_CPUS ;
 int assert (int) ;

cpu_data_t *
cpu_datap(int cpu)
{
 assert(cpu < MAX_CPUS);
 return (CpuDataEntries[cpu].cpu_data_vaddr);
}
