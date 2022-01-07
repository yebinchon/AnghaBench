
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ppnum_t ;


 int IS_MANAGED_PAGE (int) ;
 int LOCK_PVH (int) ;
 int UNLOCK_PVH (int) ;
 int assert (int) ;
 int pmap_intr_assert () ;
 int* pmap_phys_attributes ;
 int ppn_to_pai (scalar_t__) ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;

void
phys_attribute_set(
 ppnum_t pn,
 int bits)
{
 int pai;

 pmap_intr_assert();
 assert(pn != vm_page_fictitious_addr);
 if (pn == vm_page_guard_addr)
  return;

 pai = ppn_to_pai(pn);

 if (!IS_MANAGED_PAGE(pai)) {

  return;
 }

 LOCK_PVH(pai);
 pmap_phys_attributes[pai] |= bits;
 UNLOCK_PVH(pai);
}
