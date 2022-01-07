
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_info_t ;
typedef int vm_page_info_flavor_t ;
typedef scalar_t__ vm_map_t ;
typedef int mach_vm_address_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ VM_MAP_NULL ;
 int vm_map_page_info (scalar_t__,int ,int ,int ,int *) ;

kern_return_t
mach_vm_page_info(
 vm_map_t map,
 mach_vm_address_t address,
 vm_page_info_flavor_t flavor,
 vm_page_info_t info,
 mach_msg_type_number_t *count)
{
 kern_return_t kr;

 if (map == VM_MAP_NULL) {
  return KERN_INVALID_ARGUMENT;
 }

 kr = vm_map_page_info(map, address, flavor, info, count);
 return kr;
}
