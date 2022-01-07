
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int kern_return_t ;


 int VM_GET_FLAGS_ALIAS (int,int ) ;
 int vm_allocate_kernel (int ,int *,int ,int,int ) ;

kern_return_t
vm_allocate_external(
 vm_map_t map,
 vm_offset_t *addr,
 vm_size_t size,
 int flags)
{
 vm_tag_t tag;

    VM_GET_FLAGS_ALIAS(flags, tag);
    return (vm_allocate_kernel(map, addr, size, flags, tag));
}
