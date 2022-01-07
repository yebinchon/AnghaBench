
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ KERN_INVALID_ADDRESS ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_NULL ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_FIXED ;
 int VM_INHERIT_DEFAULT ;
 int VM_KERN_MEMORY_KEXT ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_PROT_ALL ;
 int VM_PROT_DEFAULT ;
 int g_kext_map ;
 int kasan_notify_address (scalar_t__,scalar_t__) ;
 scalar_t__ kext_alloc_base ;
 scalar_t__ kext_alloc_max ;
 int kext_free (scalar_t__,scalar_t__) ;
 scalar_t__ kext_post_boot_base ;
 scalar_t__ mach_vm_allocate_kernel (int ,scalar_t__*,scalar_t__,int,int ) ;
 scalar_t__ mach_vm_map_kernel (int ,scalar_t__*,scalar_t__,int ,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int printf (char*,scalar_t__) ;

kern_return_t
kext_alloc(vm_offset_t *_addr, vm_size_t size, boolean_t fixed)
{
    kern_return_t rval = 0;



    mach_vm_offset_t addr = (fixed) ? *_addr : kext_alloc_base;

    int flags = (fixed) ? VM_FLAGS_FIXED : VM_FLAGS_ANYWHERE;
    rval = mach_vm_allocate_kernel(g_kext_map, &addr, size, flags, VM_KERN_MEMORY_KEXT);
    if (rval != KERN_SUCCESS) {
        printf("vm_allocate failed - %d\n", rval);
        goto finish;
    }



    if ((addr + size) > kext_alloc_max) {
        kext_free((vm_offset_t)addr, size);
        rval = KERN_INVALID_ADDRESS;
        goto finish;
    }

    *_addr = (vm_offset_t)addr;
    rval = KERN_SUCCESS;




finish:
    return rval;
}
