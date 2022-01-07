
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int VM_MAP_NULL ;
 int VM_MAP_RANGE_CHECK (int ,int ,int ) ;
 int vm_map_delete (int ,int ,int ,int ,int ) ;

kern_return_t
vm_map_remove_locked(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end,
 boolean_t flags)
{
 kern_return_t result;

 VM_MAP_RANGE_CHECK(map, start, end);
 result = vm_map_delete(map, start, end, flags, VM_MAP_NULL);
 return(result);
}
