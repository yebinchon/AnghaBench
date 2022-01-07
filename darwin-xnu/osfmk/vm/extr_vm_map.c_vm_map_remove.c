
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int VM_MAP_NULL ;
 int VM_MAP_RANGE_CHECK (scalar_t__,scalar_t__,scalar_t__) ;
 int panic (char*,void*) ;
 int vm_map_delete (scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int vm_map_lock (scalar_t__) ;
 int vm_map_unlock (scalar_t__) ;
 scalar_t__ zone_map ;

kern_return_t
vm_map_remove(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end,
  boolean_t flags)
{
 kern_return_t result;

 vm_map_lock(map);
 VM_MAP_RANGE_CHECK(map, start, end);







 if ((map == zone_map) && (start == end))
  panic("Nothing being freed to the zone_map. start = end = %p\n", (void *)start);
 result = vm_map_delete(map, start, end, flags, VM_MAP_NULL);
 vm_map_unlock(map);

 return(result);
}
