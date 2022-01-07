
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* pv_rooted_entry_t ;
typedef TYPE_2__* pv_hashed_entry_t ;
typedef int pt_entry_t ;
typedef int ppnum_t ;
typedef scalar_t__ pmap_t ;
typedef int boolean_t ;
struct TYPE_6__ {int qlink; } ;
struct TYPE_5__ {scalar_t__ pmap; } ;


 unsigned int INTEL_EPT_CACHE_MASK ;
 unsigned int INTEL_EPT_NCACHE ;
 unsigned int INTEL_EPT_WB ;
 unsigned int INTEL_PTE_NCACHE ;
 int IS_MANAGED_PAGE (int ) ;
 scalar_t__ PAGE_SIZE ;
 unsigned int PHYS_CACHEABILITY_MASK ;
 scalar_t__ PMAP_NULL ;
 int PMAP_UPDATE_TLBS (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ PVE_VA (TYPE_1__*) ;
 int assert (int) ;
 int is_ept_pmap (scalar_t__) ;
 int kernel_pmap ;
 TYPE_1__* pai_to_pvh (int ) ;
 int panic (char*,scalar_t__,int ,scalar_t__,int ) ;
 int * pmap_pte (scalar_t__,scalar_t__) ;
 int pmap_update_pte (int *,unsigned int,unsigned int) ;
 scalar_t__ queue_next (int *) ;

void
pmap_update_cache_attributes_locked(ppnum_t pn, unsigned attributes) {
 pv_rooted_entry_t pv_h, pv_e;
 pv_hashed_entry_t pvh_e, nexth;
 vm_map_offset_t vaddr;
 pmap_t pmap;
 pt_entry_t *ptep;
 boolean_t is_ept;
 unsigned ept_attributes;

 assert(IS_MANAGED_PAGE(pn));
 assert(((~PHYS_CACHEABILITY_MASK) & attributes) == 0);


 if (attributes & INTEL_PTE_NCACHE)
  ept_attributes = INTEL_EPT_NCACHE;
 else
  ept_attributes = INTEL_EPT_WB;

 pv_h = pai_to_pvh(pn);
 if (pv_h->pmap != PMAP_NULL) {
  pv_e = pv_h;
  pvh_e = (pv_hashed_entry_t)pv_e;

  do {
   pmap = pv_e->pmap;
   vaddr = PVE_VA(pv_e);
   ptep = pmap_pte(pmap, vaddr);

   if (0 == ptep)
    panic("pmap_update_cache_attributes_locked: Missing PTE, pmap: %p, pn: 0x%x vaddr: 0x%llx kernel_pmap: %p", pmap, pn, vaddr, kernel_pmap);

   is_ept = is_ept_pmap(pmap);

   nexth = (pv_hashed_entry_t)queue_next(&pvh_e->qlink);
   if (!is_ept) {
    pmap_update_pte(ptep, PHYS_CACHEABILITY_MASK, attributes);
   } else {
    pmap_update_pte(ptep, INTEL_EPT_CACHE_MASK, ept_attributes);
   }
   PMAP_UPDATE_TLBS(pmap, vaddr, vaddr + PAGE_SIZE);
   pvh_e = nexth;
  } while ((pv_e = (pv_rooted_entry_t)nexth) != pv_h);
 }
}
