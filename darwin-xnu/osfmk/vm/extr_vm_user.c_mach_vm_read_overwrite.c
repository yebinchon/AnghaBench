
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_map_t ;
typedef int vm_map_size_t ;
typedef int vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_2__ {int map; } ;


 int FALSE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ VM_MAP_NULL ;
 TYPE_1__* current_thread () ;
 int vm_map_copy_discard (int ) ;
 scalar_t__ vm_map_copy_overwrite (int ,int ,int ,int ) ;
 scalar_t__ vm_map_copyin (scalar_t__,int ,int ,int ,int *) ;

kern_return_t
mach_vm_read_overwrite(
 vm_map_t map,
 mach_vm_address_t address,
 mach_vm_size_t size,
 mach_vm_address_t data,
 mach_vm_size_t *data_size)
{
 kern_return_t error;
 vm_map_copy_t copy;

 if (map == VM_MAP_NULL)
  return(KERN_INVALID_ARGUMENT);

 error = vm_map_copyin(map, (vm_map_address_t)address,
    (vm_map_size_t)size, FALSE, &copy);

 if (KERN_SUCCESS == error) {
  error = vm_map_copy_overwrite(current_thread()->map,
      (vm_map_address_t)data,
     copy, FALSE);
  if (KERN_SUCCESS == error) {
   *data_size = size;
   return error;
  }
  vm_map_copy_discard(copy);
 }
 return(error);
}
