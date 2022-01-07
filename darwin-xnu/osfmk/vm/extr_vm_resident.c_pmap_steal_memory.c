
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int ppnum_t ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int VM_WIMG_USE_DEFAULT ;
 int kasan_notify_address (void*,int) ;
 int kernel_pmap ;
 int panic (char*,unsigned long,...) ;
 scalar_t__ pmap_enter (int ,int,int ,int,int ,int ,int ) ;
 int pmap_next_page_hi (int *) ;
 int pmap_pre_expand (int ,int) ;
 int pmap_virtual_space (scalar_t__*,scalar_t__*) ;
 void* round_page (int) ;
 scalar_t__ trunc_page (scalar_t__) ;
 scalar_t__ virtual_space_end ;
 scalar_t__ virtual_space_start ;
 int vm_page_stolen_count ;
 int vm_page_wire_count ;

void *
pmap_steal_memory(
 vm_size_t size)
{
 kern_return_t kr;
 vm_offset_t addr, vaddr;
 ppnum_t phys_page;





 size = (size + sizeof (void *) - 1) &~ (sizeof (void *) - 1);






 if (virtual_space_start == virtual_space_end) {
  pmap_virtual_space(&virtual_space_start, &virtual_space_end);






  virtual_space_start = round_page(virtual_space_start);
  virtual_space_end = trunc_page(virtual_space_end);
 }





 addr = virtual_space_start;
 virtual_space_start += size;







 for (vaddr = round_page(addr);
      vaddr < addr + size;
      vaddr += PAGE_SIZE) {

  if (!pmap_next_page_hi(&phys_page))
   panic("pmap_steal_memory() size: 0x%llx\n", (uint64_t)size);
  pmap_pre_expand(kernel_pmap, vaddr);



  kr = pmap_enter(kernel_pmap, vaddr, phys_page,
                  VM_PROT_READ|VM_PROT_WRITE, VM_PROT_NONE,
                  VM_WIMG_USE_DEFAULT, FALSE);

  if (kr != KERN_SUCCESS) {
   panic("pmap_steal_memory() pmap_enter failed, vaddr=%#lx, phys_page=%u",
         (unsigned long)vaddr, phys_page);
  }




  vm_page_wire_count++;
  vm_page_stolen_count++;
 }




 return (void *) addr;
}
