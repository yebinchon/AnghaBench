
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int vm_inherit_t ;
typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int KERN_INVALID_ARGUMENT ;
 int VM_FLAGS_USER_REMAP ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 scalar_t__ VM_MAP_NULL ;
 int vm_map_remap (scalar_t__,scalar_t__*,int ,scalar_t__,int,int ,int ,scalar_t__,scalar_t__,int ,int *,int *,int ) ;

kern_return_t
mach_vm_remap_kernel(
 vm_map_t target_map,
 mach_vm_offset_t *address,
 mach_vm_size_t size,
 mach_vm_offset_t mask,
 int flags,
 vm_tag_t tag,
 vm_map_t src_map,
 mach_vm_offset_t memory_address,
 boolean_t copy,
 vm_prot_t *cur_protection,
 vm_prot_t *max_protection,
 vm_inherit_t inheritance)
{
 vm_map_offset_t map_addr;
 kern_return_t kr;

 if (VM_MAP_NULL == target_map || VM_MAP_NULL == src_map)
  return KERN_INVALID_ARGUMENT;


 if (flags & ~VM_FLAGS_USER_REMAP)
  return KERN_INVALID_ARGUMENT;

 map_addr = (vm_map_offset_t)*address;

 kr = vm_map_remap(target_map,
     &map_addr,
     size,
     mask,
     flags,
     VM_MAP_KERNEL_FLAGS_NONE,
     tag,
     src_map,
     memory_address,
     copy,
     cur_protection,
     max_protection,
     inheritance);
 *address = map_addr;
 return kr;
}
