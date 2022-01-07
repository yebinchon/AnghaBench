
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef scalar_t__ memory_object_size_t ;
typedef scalar_t__ memory_object_offset_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;


 int mach_make_memory_entry_64 (int ,scalar_t__*,scalar_t__,int ,int *,int ) ;

kern_return_t
_mach_make_memory_entry(
 vm_map_t target_map,
 memory_object_size_t *size,
 memory_object_offset_t offset,
 vm_prot_t permission,
 ipc_port_t *object_handle,
 ipc_port_t parent_entry)
{
 memory_object_size_t mo_size;
 kern_return_t kr;

 mo_size = (memory_object_size_t)*size;
 kr = mach_make_memory_entry_64(target_map, &mo_size,
   (memory_object_offset_t)offset, permission, object_handle,
   parent_entry);
 *size = mo_size;
 return kr;
}
