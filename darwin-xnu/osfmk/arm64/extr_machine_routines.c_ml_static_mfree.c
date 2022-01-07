
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ ppnum_t ;


 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int assert (int) ;
 int kernel_pmap ;
 int kprintf (char*,scalar_t__,void*,int ,scalar_t__) ;
 scalar_t__ ml_static_protect (scalar_t__,int,int) ;
 int panic (char*,void*) ;
 scalar_t__ pmap_find_phys (int ,scalar_t__) ;
 scalar_t__ trunc_page_64 (scalar_t__) ;
 int vm_page_create (scalar_t__,scalar_t__) ;
 int vm_page_lockspin_queues () ;
 int vm_page_unlock_queues () ;
 int vm_page_wire_count ;
 int vm_page_wire_count_initial ;

void
ml_static_mfree(
  vm_offset_t vaddr,
  vm_size_t size)
{
 vm_offset_t vaddr_cur;
 ppnum_t ppn;
 uint32_t freed_pages = 0;


 if (vaddr < VM_MIN_KERNEL_ADDRESS)
  return;

 assert((vaddr & (PAGE_SIZE - 1)) == 0);

 for (vaddr_cur = vaddr;
      vaddr_cur < trunc_page_64(vaddr + size);
      vaddr_cur += PAGE_SIZE) {

  ppn = pmap_find_phys(kernel_pmap, vaddr_cur);
  if (ppn != (vm_offset_t) ((void*)0)) {






   if (ml_static_protect(vaddr_cur, PAGE_SIZE, VM_PROT_WRITE | VM_PROT_READ) != KERN_SUCCESS) {
    panic("Failed ml_static_mfree on %p", (void *) vaddr_cur);
   }
   vm_page_create(ppn, (ppn + 1));
   freed_pages++;
  }
 }
 vm_page_lockspin_queues();
 vm_page_wire_count -= freed_pages;
 vm_page_wire_count_initial -= freed_pages;
 vm_page_unlock_queues();



}
