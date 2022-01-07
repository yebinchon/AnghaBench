
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef int uint64_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int KMEM_FREE_CODE ;
 int KMEM_FREE_CODE_2 ;
 int TRACE_MACHLEAKS (int ,int ,scalar_t__,scalar_t__) ;
 int VM_MAP_PAGE_MASK (int ) ;
 int VM_MAP_REMOVE_KUNWIRE ;
 scalar_t__ VM_MIN_KERNEL_AND_KEXT_ADDRESS ;
 int assert (int) ;
 int panic (char*) ;
 int printf (char*,int ,int ) ;
 scalar_t__ vm_map_remove (int ,int ,int ,int ) ;
 int vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;

void
kmem_free(
 vm_map_t map,
 vm_offset_t addr,
 vm_size_t size)
{
 kern_return_t kr;

 assert(addr >= VM_MIN_KERNEL_AND_KEXT_ADDRESS);

 TRACE_MACHLEAKS(KMEM_FREE_CODE, KMEM_FREE_CODE_2, size, addr);

 if(size == 0) {



  return;
 }

 kr = vm_map_remove(map,
      vm_map_trunc_page(addr,
          VM_MAP_PAGE_MASK(map)),
      vm_map_round_page(addr + size,
          VM_MAP_PAGE_MASK(map)),
      VM_MAP_REMOVE_KUNWIRE);
 if (kr != KERN_SUCCESS)
  panic("kmem_free");
}
