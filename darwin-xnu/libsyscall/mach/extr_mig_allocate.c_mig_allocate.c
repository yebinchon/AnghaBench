
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_address_t ;


 scalar_t__ KERN_SUCCESS ;
 int TRUE ;
 int VM_MAKE_TAG (int ) ;
 int VM_MEMORY_MACH_MSG ;
 int mach_task_self_ ;
 scalar_t__ vm_allocate (int ,scalar_t__*,int ,int) ;

void
mig_allocate(vm_address_t *addr_p, vm_size_t size)
{
 if (vm_allocate(mach_task_self_,
   addr_p,
   size,
   VM_MAKE_TAG(VM_MEMORY_MACH_MSG)|TRUE)
     != KERN_SUCCESS)
  *addr_p = 0;
}
