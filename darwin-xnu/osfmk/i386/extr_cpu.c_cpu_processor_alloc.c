
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int * processor_t ;
typedef scalar_t__ boolean_t ;


 int KERN_SUCCESS ;
 int VM_KERN_MEMORY_OSFMK ;
 int bzero (void*,int) ;
 int kernel_map ;
 int kmem_alloc (int ,int *,int,int ) ;
 int processor_master ;

processor_t
cpu_processor_alloc(boolean_t is_boot_cpu)
{
 int ret;
 processor_t proc;

 if (is_boot_cpu)
  return &processor_master;

 ret = kmem_alloc(kernel_map, (vm_offset_t *) &proc, sizeof(*proc), VM_KERN_MEMORY_OSFMK);
 if (ret != KERN_SUCCESS)
  return ((void*)0);

 bzero((void *) proc, sizeof(*proc));
 return proc;
}
