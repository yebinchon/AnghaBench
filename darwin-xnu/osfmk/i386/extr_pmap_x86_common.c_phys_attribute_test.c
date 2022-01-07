
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_map_offset_t ;
typedef TYPE_1__* pv_rooted_entry_t ;
typedef TYPE_2__* pv_hashed_entry_t ;
typedef int pt_entry_t ;
typedef scalar_t__ ppnum_t ;
typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_6__ {int qlink; int pmap; } ;
struct TYPE_5__ {scalar_t__ pmap; } ;


 int INTEL_EPT_MOD ;
 int INTEL_EPT_REF ;
 int IS_MANAGED_PAGE (int) ;
 int LOCK_PVH (int) ;
 int PHYS_MODIFIED ;
 int PHYS_REFERENCED ;
 scalar_t__ PMAP_NULL ;
 int PVE_VA (TYPE_2__*) ;
 int UNLOCK_PVH (int) ;
 int assert (int) ;
 int ept_refmod_to_physmap (int) ;
 int is_ept_pmap (int ) ;
 TYPE_1__* pai_to_pvh (int) ;
 int pmap_intr_assert () ;
 int* pmap_phys_attributes ;
 int* pmap_pte (int ,int ) ;
 int ppn_to_pai (scalar_t__) ;
 scalar_t__ queue_next (int *) ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;

int
phys_attribute_test(
 ppnum_t pn,
 int bits)
{
 pv_rooted_entry_t pv_h;
 pv_hashed_entry_t pv_e;
 pt_entry_t *pte;
 int pai;
 pmap_t pmap;
 int attributes = 0;
 boolean_t is_ept;

 pmap_intr_assert();
 assert(pn != vm_page_fictitious_addr);
 assert((bits & ~(PHYS_MODIFIED | PHYS_REFERENCED)) == 0);
 if (pn == vm_page_guard_addr)
  return 0;

 pai = ppn_to_pai(pn);

 if (!IS_MANAGED_PAGE(pai)) {



  return 0;
 }
 if ((pmap_phys_attributes[pai] & bits) == bits)
  return bits;

 pv_h = pai_to_pvh(pai);

 LOCK_PVH(pai);

 attributes = pmap_phys_attributes[pai] & bits;






 if (attributes != bits &&
     pv_h->pmap != PMAP_NULL) {



  pv_e = (pv_hashed_entry_t)pv_h;
  do {
   vm_map_offset_t va;

   pmap = pv_e->pmap;
   is_ept = is_ept_pmap(pmap);
   va = PVE_VA(pv_e);




   pte = pmap_pte(pmap, va);
   if (!is_ept) {
    attributes |= (int)(*pte & bits);
   } else {
    attributes |= (int)(ept_refmod_to_physmap((*pte & (INTEL_EPT_REF | INTEL_EPT_MOD))) & (PHYS_MODIFIED | PHYS_REFERENCED));

   }

   pv_e = (pv_hashed_entry_t)queue_next(&pv_e->qlink);

  } while ((attributes != bits) &&
    (pv_e != (pv_hashed_entry_t)pv_h));
 }
 pmap_phys_attributes[pai] |= attributes;

 UNLOCK_PVH(pai);
 return (attributes);
}
