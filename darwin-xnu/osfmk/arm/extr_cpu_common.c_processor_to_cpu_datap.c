
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_7__ {TYPE_1__* cpu_processor; } ;
typedef TYPE_2__ cpu_data_t ;
struct TYPE_8__ {int * cpu_data_vaddr; } ;
struct TYPE_6__ {size_t cpu_id; } ;


 TYPE_5__* CpuDataEntries ;
 size_t MAX_CPUS ;
 int assert (int) ;

cpu_data_t *
processor_to_cpu_datap(processor_t processor)
{
 cpu_data_t *target_cpu_datap;

 assert(processor->cpu_id < MAX_CPUS);
 assert(CpuDataEntries[processor->cpu_id].cpu_data_vaddr != ((void*)0));

 target_cpu_datap = (cpu_data_t*)CpuDataEntries[processor->cpu_id].cpu_data_vaddr;
 assert(target_cpu_datap->cpu_processor == processor);

 return target_cpu_datap;
}
