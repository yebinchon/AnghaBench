
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int vm_inherit_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int VM_GET_FLAGS_ALIAS (int,int ) ;
 int vm_remap_kernel (int ,int *,int ,int ,int,int ,int ,int ,int ,int *,int *,int ) ;

kern_return_t
vm_remap_external(
 vm_map_t target_map,
 vm_offset_t *address,
 vm_size_t size,
 vm_offset_t mask,
 int flags,
 vm_map_t src_map,
 vm_offset_t memory_address,
 boolean_t copy,
 vm_prot_t *cur_protection,
 vm_prot_t *max_protection,
 vm_inherit_t inheritance)
{
 vm_tag_t tag;
 VM_GET_FLAGS_ALIAS(flags, tag);

 return (vm_remap_kernel(target_map, address, size, mask, flags, tag, src_map,
    memory_address, copy, cur_protection, max_protection, inheritance));
}
