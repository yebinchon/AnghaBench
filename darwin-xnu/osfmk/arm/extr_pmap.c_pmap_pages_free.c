
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
typedef scalar_t__ pmap_paddr_t ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ page_free_entry_t ;


 int OSAddAtomic (unsigned int,int *) ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_PAGE_NULL ;
 int VM_PAGE_WIRED (scalar_t__) ;
 int assert (int) ;
 scalar_t__ gPhysBase ;
 int inuse_pmap_pages_count ;
 scalar_t__ phystokv (scalar_t__) ;
 int pmap_object ;
 int pmap_pages_lock ;
 TYPE_1__* pmap_pages_reclaim_list ;
 scalar_t__ pmap_pages_request_count ;
 int pmap_simple_lock (int *) ;
 int pmap_simple_unlock (int *) ;
 int vm_object_lock (int ) ;
 int vm_object_unlock (int ) ;
 int vm_page_free (scalar_t__) ;
 int vm_page_lock_queues () ;
 scalar_t__ vm_page_lookup (int ,scalar_t__) ;
 int vm_page_unlock_queues () ;

__attribute__((used)) static void
pmap_pages_free(
 pmap_paddr_t pa,
 unsigned size)
{
 pmap_simple_lock(&pmap_pages_lock);

 if (pmap_pages_request_count != 0) {
  page_free_entry_t *page_entry;

  pmap_pages_request_count--;
  page_entry = (page_free_entry_t *)phystokv(pa);
  page_entry->next = pmap_pages_reclaim_list;
  pmap_pages_reclaim_list = page_entry;
  pmap_simple_unlock(&pmap_pages_lock);

  return;
 }

 pmap_simple_unlock(&pmap_pages_lock);

 vm_page_t m;
 pmap_paddr_t pa_max;

 OSAddAtomic(-(size>>PAGE_SHIFT), &inuse_pmap_pages_count);

 for (pa_max = pa + size; pa < pa_max; pa = pa + PAGE_SIZE) {
  vm_object_lock(pmap_object);
  m = vm_page_lookup(pmap_object, (pa - gPhysBase));
  assert(m != VM_PAGE_NULL);
  assert(VM_PAGE_WIRED(m));
  vm_page_lock_queues();
  vm_page_free(m);
  vm_page_unlock_queues();
  vm_object_unlock(pmap_object);
 }
}
