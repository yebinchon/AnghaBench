
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_4__ {scalar_t__ fiqstack_top; scalar_t__ intstack_top; int cpu_processor; } ;
typedef TYPE_1__ cpu_data_t ;


 TYPE_1__ BootCpuData ;
 scalar_t__ FIQSTACK_SIZE ;
 scalar_t__ INTSTACK_SIZE ;
 int cpu_processor_free (int ) ;
 int kernel_map ;
 int kfree (void*,scalar_t__) ;
 int kmem_free (int ,int ,int) ;

void
cpu_data_free(cpu_data_t *cpu_data_ptr)
{
        if (cpu_data_ptr == &BootCpuData)
                return;

 cpu_processor_free( cpu_data_ptr->cpu_processor);
 kfree( (void *)(cpu_data_ptr->intstack_top - INTSTACK_SIZE), INTSTACK_SIZE);
 kfree( (void *)(cpu_data_ptr->fiqstack_top - FIQSTACK_SIZE), FIQSTACK_SIZE);
 kmem_free(kernel_map, (vm_offset_t)cpu_data_ptr, sizeof(cpu_data_t));
}
