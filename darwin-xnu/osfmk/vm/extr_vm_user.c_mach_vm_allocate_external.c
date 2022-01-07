
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_map_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;


 int VM_GET_FLAGS_ALIAS (int,int ) ;
 int mach_vm_allocate_kernel (int ,int *,int ,int,int ) ;

kern_return_t
mach_vm_allocate_external(
 vm_map_t map,
 mach_vm_offset_t *addr,
 mach_vm_size_t size,
 int flags)
{
    vm_tag_t tag;

    VM_GET_FLAGS_ALIAS(flags, tag);
    return (mach_vm_allocate_kernel(map, addr, size, flags, tag));
}
