
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_prot_t ;
typedef int vm_object_offset_t ;
typedef int vm_map_t ;
typedef int vm_inherit_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef int boolean_t ;


 int VM_GET_FLAGS_ALIAS (int,int ) ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int mach_vm_map_kernel (int ,int *,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ) ;

kern_return_t
mach_vm_map_external(
 vm_map_t target_map,
 mach_vm_offset_t *address,
 mach_vm_size_t initial_size,
 mach_vm_offset_t mask,
 int flags,
 ipc_port_t port,
 vm_object_offset_t offset,
 boolean_t copy,
 vm_prot_t cur_protection,
 vm_prot_t max_protection,
 vm_inherit_t inheritance)
{
 vm_tag_t tag;

 VM_GET_FLAGS_ALIAS(flags, tag);
 return (mach_vm_map_kernel(target_map, address, initial_size, mask,
       flags, VM_MAP_KERNEL_FLAGS_NONE, tag,
       port, offset, copy,
       cur_protection, max_protection,
       inheritance));
}
