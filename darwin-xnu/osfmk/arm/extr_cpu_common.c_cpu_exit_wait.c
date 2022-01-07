
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_sleep_token; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_4__ {TYPE_1__* cpu_data_vaddr; } ;


 unsigned int volatile ARM_CPU_ON_SLEEP_PATH ;
 TYPE_2__* CpuDataEntries ;
 int master_cpu ;

void
cpu_exit_wait(int cpu)
{
 if ( cpu != master_cpu) {
  cpu_data_t *cpu_data_ptr;

  cpu_data_ptr = CpuDataEntries[cpu].cpu_data_vaddr;
  while (!((*(volatile unsigned int*)&cpu_data_ptr->cpu_sleep_token) == ARM_CPU_ON_SLEEP_PATH)) {};
 }
}
