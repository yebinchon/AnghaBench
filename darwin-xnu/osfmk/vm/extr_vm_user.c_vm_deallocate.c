
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_map_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ VM_MAP_NULL ;
 int VM_MAP_PAGE_MASK (scalar_t__) ;
 int VM_MAP_REMOVE_NO_FLAGS ;
 int vm_map_remove (scalar_t__,int ,int ,int ) ;
 int vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;

kern_return_t
vm_deallocate(
 vm_map_t map,
 vm_offset_t start,
 vm_size_t size)
{
 if ((map == VM_MAP_NULL) || (start + size < start))
  return(KERN_INVALID_ARGUMENT);

 if (size == (vm_offset_t) 0)
  return(KERN_SUCCESS);

 return vm_map_remove(map,
        vm_map_trunc_page(start,
            VM_MAP_PAGE_MASK(map)),
        vm_map_round_page(start+size,
            VM_MAP_PAGE_MASK(map)),
        VM_MAP_REMOVE_NO_FLAGS);
}
