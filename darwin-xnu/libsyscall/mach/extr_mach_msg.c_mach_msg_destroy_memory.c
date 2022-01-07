
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;


 int mach_task_self_ ;
 int vm_deallocate (int ,int ,scalar_t__) ;

__attribute__((used)) static void
mach_msg_destroy_memory(vm_offset_t addr, vm_size_t size)
{
    if (size != 0)
 (void) vm_deallocate(mach_task_self_, addr, size);
}
