
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 int g_kext_map ;
 scalar_t__ mach_vm_deallocate (int ,int ,int ) ;

void
kext_free(vm_offset_t addr, vm_size_t size)
{
    kern_return_t rval;

    rval = mach_vm_deallocate(g_kext_map, addr, size);
    assert(rval == KERN_SUCCESS);
}
