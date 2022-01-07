
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int kern_return_t ;
struct TYPE_6__ {scalar_t__ max_offset; } ;


 int KERN_INVALID_ADDRESS ;
 int KERN_SUCCESS ;
 scalar_t__ MACH_VM_MAX_ADDRESS ;
 scalar_t__ VM_MAX_ADDRESS ;
 int vm_map_is_64bit (TYPE_1__*) ;
 int vm_map_lock (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;

kern_return_t
vm_map_raise_max_offset(
 vm_map_t map,
 vm_map_offset_t new_max_offset)
{
 kern_return_t ret;

 vm_map_lock(map);
 ret = KERN_INVALID_ADDRESS;

 if (new_max_offset >= map->max_offset) {
  if (!vm_map_is_64bit(map)) {
   if (new_max_offset <= (vm_map_offset_t)VM_MAX_ADDRESS) {
    map->max_offset = new_max_offset;
    ret = KERN_SUCCESS;
   }
  } else {
   if (new_max_offset <= (vm_map_offset_t)MACH_VM_MAX_ADDRESS) {
    map->max_offset = new_max_offset;
    ret = KERN_SUCCESS;
   }
  }
 }

 vm_map_unlock(map);
 return ret;
}
