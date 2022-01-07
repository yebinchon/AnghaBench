
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_address_t ;


 int mach_task_self_ ;
 int vm_deallocate (int ,int ,int ) ;

void
mig_deallocate(vm_address_t addr, vm_size_t size)
{
 (void)vm_deallocate(mach_task_self_,
   addr,
   size);
}
