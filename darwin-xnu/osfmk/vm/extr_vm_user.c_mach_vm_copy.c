
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_t ;
typedef int vm_map_size_t ;
typedef int vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ VM_MAP_NULL ;
 int vm_map_copy_discard (int ) ;
 scalar_t__ vm_map_copy_overwrite (scalar_t__,int ,int ,int ) ;
 scalar_t__ vm_map_copyin (scalar_t__,int ,int ,int ,int *) ;

kern_return_t
mach_vm_copy(
 vm_map_t map,
 mach_vm_address_t source_address,
 mach_vm_size_t size,
 mach_vm_address_t dest_address)
{
 vm_map_copy_t copy;
 kern_return_t kr;

 if (map == VM_MAP_NULL)
  return KERN_INVALID_ARGUMENT;

 kr = vm_map_copyin(map, (vm_map_address_t)source_address,
      (vm_map_size_t)size, FALSE, &copy);

 if (KERN_SUCCESS == kr) {
  kr = vm_map_copy_overwrite(map,
    (vm_map_address_t)dest_address,
    copy, FALSE );

  if (KERN_SUCCESS != kr)
   vm_map_copy_discard(copy);
 }
 return kr;
}
