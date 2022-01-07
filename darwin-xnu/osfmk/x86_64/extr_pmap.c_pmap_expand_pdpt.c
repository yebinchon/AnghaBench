
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_object_offset_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef scalar_t__ uint64_t ;
typedef int ppnum_t ;
typedef TYPE_1__* pmap_t ;
typedef int pmap_paddr_t ;
typedef int pdpt_entry_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {int pm_obj_pdpt; } ;


 int DBG (char*,TYPE_1__*,void*) ;
 int INTEL_EPT_EX ;
 int INTEL_PTE_USER ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int OSAddAtomic (int,int *) ;
 int OSAddAtomic64 (int,int *) ;
 int PAGE_SIZE ;
 int * PDPT_ENTRY_NULL ;
 scalar_t__ PD_ENTRY_NULL ;
 unsigned int PMAP_EXPAND_OPTIONS_NOWAIT ;
 int PMAP_LOCK (TYPE_1__*) ;
 int PMAP_UNLOCK (TYPE_1__*) ;
 int PMAP_ZINFO_PALLOC (TYPE_1__*,int) ;
 int PMAP_ZINFO_PFREE (TYPE_1__*,int) ;
 int PTE_READ (scalar_t__) ;
 int PTE_WRITE (scalar_t__) ;
 int TRUE ;
 int VM_KERN_MEMORY_PTE ;
 int VM_PAGE_FREE (int ) ;
 int VM_PAGE_GET_PHYS_PAGE (int ) ;
 int VM_PAGE_NULL ;
 int VM_PAGE_WAIT () ;
 int alloc_ptepages_count ;
 int i386_ptob (int ) ;
 int inuse_ptepages_count ;
 scalar_t__ is_ept_pmap (TYPE_1__*) ;
 int pa_to_pte (int ) ;
 int panic (char*,TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ pdptidx (TYPE_1__*,scalar_t__) ;
 scalar_t__ pmap64_pde (TYPE_1__*,scalar_t__) ;
 int * pmap64_pdpt (TYPE_1__*,scalar_t__) ;
 scalar_t__ pmap_expand_pml4 (TYPE_1__*,scalar_t__,unsigned int) ;
 int pmap_store_pte (int *,int) ;
 int pmap_zero_page (int ) ;
 int vm_object_lock (int ) ;
 int vm_object_unlock (int ) ;
 int vm_page_grab () ;
 int vm_page_insert_wired (int ,int ,int,int ) ;
 int vm_page_lockspin_queues () ;
 scalar_t__ vm_page_lookup (int ,int) ;
 int vm_page_unlock_queues () ;
 int vm_page_wire (int ,int ,int ) ;

kern_return_t
pmap_expand_pdpt(pmap_t map, vm_map_offset_t vaddr, unsigned int options)
{
 vm_page_t m;
 pmap_paddr_t pa;
 uint64_t i;
 ppnum_t pn;
 pdpt_entry_t *pdptp;
 boolean_t is_ept = is_ept_pmap(map);

 DBG("pmap_expand_pdpt(%p,%p)\n", map, (void *)vaddr);

 while ((pdptp = pmap64_pdpt(map, vaddr)) == PDPT_ENTRY_NULL) {
  kern_return_t pep4kr = pmap_expand_pml4(map, vaddr, options);
  if (pep4kr != KERN_SUCCESS)
   return pep4kr;
 }




 while ((m = vm_page_grab()) == VM_PAGE_NULL) {
  if (options & PMAP_EXPAND_OPTIONS_NOWAIT)
   return KERN_RESOURCE_SHORTAGE;
  VM_PAGE_WAIT();
 }





 pn = VM_PAGE_GET_PHYS_PAGE(m);
 pa = i386_ptob(pn);
 i = pdptidx(map, vaddr);




 pmap_zero_page(pn);

 vm_page_lockspin_queues();
 vm_page_wire(m, VM_KERN_MEMORY_PTE, TRUE);
 vm_page_unlock_queues();

 OSAddAtomic(1, &inuse_ptepages_count);
 OSAddAtomic64(1, &alloc_ptepages_count);
 PMAP_ZINFO_PALLOC(map, PAGE_SIZE);


 vm_object_lock(map->pm_obj_pdpt);

 PMAP_LOCK(map);



 if (pmap64_pde(map, vaddr) != PD_ENTRY_NULL) {
  PMAP_UNLOCK(map);
  vm_object_unlock(map->pm_obj_pdpt);

  VM_PAGE_FREE(m);

  OSAddAtomic(-1, &inuse_ptepages_count);
  PMAP_ZINFO_PFREE(map, PAGE_SIZE);
  return KERN_SUCCESS;
 }







 vm_page_insert_wired(m, map->pm_obj_pdpt, (vm_object_offset_t)i * PAGE_SIZE, VM_KERN_MEMORY_PTE);
 vm_object_unlock(map->pm_obj_pdpt);




 pdptp = pmap64_pdpt(map, vaddr);

 pmap_store_pte(pdptp, pa_to_pte(pa)
    | PTE_READ(is_ept)
    | (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
    | PTE_WRITE(is_ept));

 PMAP_UNLOCK(map);

 return KERN_SUCCESS;

}
