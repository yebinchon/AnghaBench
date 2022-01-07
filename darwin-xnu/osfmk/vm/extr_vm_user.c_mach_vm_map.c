
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_object_offset_t ;
typedef int vm_map_t ;
typedef int vm_inherit_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef int boolean_t ;


 int mach_vm_map_external (int ,int *,int ,int ,int,int ,int ,int ,int ,int ,int ) ;

kern_return_t
mach_vm_map(
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
 return (mach_vm_map_external(target_map, address, initial_size, mask, flags, port,
     offset, copy, cur_protection, max_protection, inheritance));
}
