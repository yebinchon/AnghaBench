
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_t ;
typedef int vm_map_offset_t ;
typedef int vm_behavior_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int PAGE_MASK ;



 scalar_t__ VM_MAP_NULL ;
 int VM_MAP_PAGE_MASK (scalar_t__) ;
 int vm_map_behavior_set (scalar_t__,int ,int ,int ) ;
 int vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;

kern_return_t
mach_vm_behavior_set(
 vm_map_t map,
 mach_vm_offset_t start,
 mach_vm_size_t size,
 vm_behavior_t new_behavior)
{
 vm_map_offset_t align_mask;

 if ((map == VM_MAP_NULL) || (start + size < start))
  return(KERN_INVALID_ARGUMENT);

 if (size == 0)
  return KERN_SUCCESS;

 switch (new_behavior) {
 case 129:
 case 128:
 case 130:





  align_mask = PAGE_MASK;
  break;
 default:
  align_mask = VM_MAP_PAGE_MASK(map);
  break;
 }

 return vm_map_behavior_set(map,
       vm_map_trunc_page(start, align_mask),
       vm_map_round_page(start+size, align_mask),
       new_behavior);
}
