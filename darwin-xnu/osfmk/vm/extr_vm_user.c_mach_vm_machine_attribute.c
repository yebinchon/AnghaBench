
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_t ;
typedef int vm_machine_attribute_val_t ;
typedef int vm_machine_attribute_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ VM_MAP_NULL ;
 int VM_MAP_PAGE_MASK (scalar_t__) ;
 int vm_map_machine_attribute (scalar_t__,int ,int ,int ,int *) ;
 int vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;

kern_return_t
mach_vm_machine_attribute(
 vm_map_t map,
 mach_vm_address_t addr,
 mach_vm_size_t size,
 vm_machine_attribute_t attribute,
 vm_machine_attribute_val_t* value)
{
 if ((map == VM_MAP_NULL) || (addr + size < addr))
  return(KERN_INVALID_ARGUMENT);

 if (size == 0)
  return KERN_SUCCESS;

 return vm_map_machine_attribute(
  map,
  vm_map_trunc_page(addr,
      VM_MAP_PAGE_MASK(map)),
  vm_map_round_page(addr+size,
      VM_MAP_PAGE_MASK(map)),
  attribute,
  value);
}
