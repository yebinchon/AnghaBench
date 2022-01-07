
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
struct processor {int dummy; } ;
struct TYPE_5__ {struct processor* cpu_processor; } ;
typedef TYPE_1__ cpu_data_t ;
typedef scalar_t__ boolean_t ;


 TYPE_1__ BootCpuData ;
 scalar_t__ KERN_SUCCESS ;
 int VM_KERN_MEMORY_CPU ;
 int bzero (void*,int) ;
 struct processor* cpu_processor_alloc (scalar_t__) ;
 int cpu_stack_alloc (TYPE_1__*) ;
 int kernel_map ;
 scalar_t__ kmem_alloc (int ,int *,int,int ) ;
 int panic (char*) ;

cpu_data_t *
cpu_data_alloc(boolean_t is_boot_cpu)
{
 cpu_data_t *cpu_data_ptr = ((void*)0);

 if (is_boot_cpu)
  cpu_data_ptr = &BootCpuData;
 else {
  if ((kmem_alloc(kernel_map, (vm_offset_t *)&cpu_data_ptr, sizeof(cpu_data_t), VM_KERN_MEMORY_CPU)) != KERN_SUCCESS)
   goto cpu_data_alloc_error;

  bzero((void *)cpu_data_ptr, sizeof(cpu_data_t));

  cpu_stack_alloc(cpu_data_ptr);
 }

 cpu_data_ptr->cpu_processor = cpu_processor_alloc(is_boot_cpu);
 if (cpu_data_ptr->cpu_processor == (struct processor *)((void*)0))
  goto cpu_data_alloc_error;

 return cpu_data_ptr;

cpu_data_alloc_error:
 panic("cpu_data_alloc() failed\n");
 return (cpu_data_t *)((void*)0);
}
