
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int cpu_number; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_5__ {void* cpu_data_paddr; TYPE_1__* cpu_data_vaddr; } ;
typedef int SInt32 ;


 TYPE_3__* CpuDataEntries ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ MAX_CPUS ;
 int OSIncrementAtomic (int *) ;
 scalar_t__ ml_vtophys (int ) ;
 scalar_t__ real_ncpus ;

kern_return_t
cpu_data_register(cpu_data_t *cpu_data_ptr)
{
 int cpu;

 cpu = OSIncrementAtomic((SInt32*)&real_ncpus);
 if (real_ncpus > MAX_CPUS) {
  return KERN_FAILURE;
 }

 cpu_data_ptr->cpu_number = cpu;
 CpuDataEntries[cpu].cpu_data_vaddr = cpu_data_ptr;
 CpuDataEntries[cpu].cpu_data_paddr = (void *)ml_vtophys( (vm_offset_t)cpu_data_ptr);
 return KERN_SUCCESS;
}
