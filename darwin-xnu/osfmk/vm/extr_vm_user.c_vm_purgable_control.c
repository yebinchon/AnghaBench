
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_purgable_t ;
typedef int vm_offset_t ;
typedef scalar_t__ vm_map_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int PAGE_MASK ;
 scalar_t__ VM_MAP_NULL ;
 scalar_t__ VM_PURGABLE_SET_STATE_FROM_KERNEL ;
 int vm_map_purgable_control (scalar_t__,int ,scalar_t__,int*) ;
 int vm_map_trunc_page (int ,int ) ;

kern_return_t
vm_purgable_control(
 vm_map_t map,
 vm_offset_t address,
 vm_purgable_t control,
 int *state)
{
 if (VM_MAP_NULL == map)
  return KERN_INVALID_ARGUMENT;

 if (control == VM_PURGABLE_SET_STATE_FROM_KERNEL) {

  return KERN_INVALID_ARGUMENT;
 }

 return vm_map_purgable_control(map,
           vm_map_trunc_page(address, PAGE_MASK),
           control,
           state);
}
