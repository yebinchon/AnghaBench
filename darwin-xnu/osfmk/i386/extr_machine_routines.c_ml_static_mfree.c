
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ ppnum_t ;
typedef int addr64_t ;
struct TYPE_5__ {scalar_t__ resident_count; scalar_t__ resident_max; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;


 scalar_t__ IS_MANAGED_PAGE (scalar_t__) ;
 int PAGE_SIZE ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int assert (int) ;
 TYPE_2__* kernel_pmap ;
 int kprintf (char*,scalar_t__,void*,int ,scalar_t__) ;
 scalar_t__ pmap_find_phys (TYPE_2__*,int) ;
 int pmap_remove (TYPE_2__*,int,int) ;
 int pmap_valid_page (scalar_t__) ;
 int round_page_64 (scalar_t__) ;
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
 addr64_t vaddr_cur;
 ppnum_t ppn;
 uint32_t freed_pages = 0;
 assert(vaddr >= VM_MIN_KERNEL_ADDRESS);

 assert((vaddr & (PAGE_SIZE-1)) == 0);

 for (vaddr_cur = vaddr;
       vaddr_cur < round_page_64(vaddr+size);
      vaddr_cur += PAGE_SIZE) {
  ppn = pmap_find_phys(kernel_pmap, vaddr_cur);
  if (ppn != (vm_offset_t)((void*)0)) {
          kernel_pmap->stats.resident_count++;
   if (kernel_pmap->stats.resident_count >
       kernel_pmap->stats.resident_max) {
    kernel_pmap->stats.resident_max =
     kernel_pmap->stats.resident_count;
   }
   pmap_remove(kernel_pmap, vaddr_cur, vaddr_cur+PAGE_SIZE);
   assert(pmap_valid_page(ppn));
   if (IS_MANAGED_PAGE(ppn)) {
    vm_page_create(ppn,(ppn+1));
    freed_pages++;
   }
  }
 }
 vm_page_lockspin_queues();
 vm_page_wire_count -= freed_pages;
 vm_page_wire_count_initial -= freed_pages;
 vm_page_unlock_queues();




}
