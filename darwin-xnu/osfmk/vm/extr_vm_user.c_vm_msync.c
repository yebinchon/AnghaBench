
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_sync_t ;
typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_map_t ;
typedef int vm_map_size_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ vm_address_t ;
typedef int kern_return_t ;


 int KERN_INVALID_TASK ;
 scalar_t__ VM_MAP_NULL ;
 int vm_map_msync (scalar_t__,int ,int ,int ) ;

kern_return_t
vm_msync(
 vm_map_t map,
 vm_address_t address,
 vm_size_t size,
 vm_sync_t sync_flags)
{

 if (map == VM_MAP_NULL)
  return(KERN_INVALID_TASK);

 return vm_map_msync(map, (vm_map_address_t)address,
   (vm_map_size_t)size, sync_flags);
}
