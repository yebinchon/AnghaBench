
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef int memory_object_size_t ;
typedef int memory_object_offset_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;


 int KERN_INVALID_VALUE ;
 int MAP_MEM_FLAGS_MASK ;
 int MAP_MEM_FLAGS_USER ;
 int mach_make_memory_entry_internal (int ,int *,int ,int,int *,int ) ;

kern_return_t
mach_make_memory_entry_64(
 vm_map_t target_map,
 memory_object_size_t *size,
 memory_object_offset_t offset,
 vm_prot_t permission,
 ipc_port_t *object_handle,
 ipc_port_t parent_handle)
{
 if ((permission & MAP_MEM_FLAGS_MASK) & ~MAP_MEM_FLAGS_USER) {



  return KERN_INVALID_VALUE;
 }

 return mach_make_memory_entry_internal(target_map,
            size,
            offset,
            permission,
            object_handle,
            parent_handle);
}
