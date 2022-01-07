
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_region_info_t ;
typedef int vm_region_flavor_t ;
typedef scalar_t__ vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ VM_MAP_NULL ;
 int VM_REGION_BASIC_INFO ;
 int VM_REGION_BASIC_INFO_64 ;
 int vm_map_region (scalar_t__,scalar_t__*,scalar_t__*,int ,int ,int *,int *) ;

kern_return_t
mach_vm_region(
 vm_map_t map,
 mach_vm_offset_t *address,
 mach_vm_size_t *size,
 vm_region_flavor_t flavor,
 vm_region_info_t info,
 mach_msg_type_number_t *count,
 mach_port_t *object_name)
{
 vm_map_offset_t map_addr;
 vm_map_size_t map_size;
 kern_return_t kr;

 if (VM_MAP_NULL == map)
  return KERN_INVALID_ARGUMENT;

 map_addr = (vm_map_offset_t)*address;
 map_size = (vm_map_size_t)*size;


 if (VM_REGION_BASIC_INFO == flavor)
  flavor = VM_REGION_BASIC_INFO_64;

 kr = vm_map_region(map,
      &map_addr, &map_size,
      flavor, info, count,
      object_name);

 *address = map_addr;
 *size = map_size;
 return kr;
}
