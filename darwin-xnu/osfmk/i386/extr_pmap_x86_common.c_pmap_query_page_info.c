
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef int pt_entry_t ;
typedef int ppnum_t ;
typedef scalar_t__ pmap_t ;
typedef scalar_t__ pmap_paddr_t ;
typedef int pd_entry_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 scalar_t__ IS_INTERNAL_PAGE (int ) ;
 int IS_MANAGED_PAGE (int ) ;
 scalar_t__ IS_REUSABLE_PAGE (int ) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int PMAP_LOCK (scalar_t__) ;
 scalar_t__ PMAP_NULL ;
 int PMAP_QUERY_PAGE_ALTACCT ;
 int PMAP_QUERY_PAGE_COMPRESSED ;
 int PMAP_QUERY_PAGE_COMPRESSED_ALTACCT ;
 int PMAP_QUERY_PAGE_INTERNAL ;
 int PMAP_QUERY_PAGE_PRESENT ;
 int PMAP_QUERY_PAGE_REUSABLE ;
 int PMAP_UNLOCK (scalar_t__) ;
 int PTE_COMPRESSED_ALT ;
 scalar_t__ PTE_IS_COMPRESSED (int) ;
 int PTE_PS ;
 int PTE_VALID_MASK (int ) ;
 int* PT_ENTRY_NULL ;
 int assert (scalar_t__) ;
 int is_ept_pmap (scalar_t__) ;
 scalar_t__ kernel_pmap ;
 int pa_index (scalar_t__) ;
 int pmap_intr_assert () ;
 int* pmap_pde (scalar_t__,int ) ;
 int* pmap_pte (scalar_t__,int ) ;
 scalar_t__ pmap_pv_is_altacct (scalar_t__,int ,int ) ;
 scalar_t__ pte_to_pa (int) ;

kern_return_t
pmap_query_page_info(
 pmap_t pmap,
 vm_map_offset_t va,
 int *disp_p)
{
 int disp;
 boolean_t is_ept;
 pmap_paddr_t pa;
 ppnum_t pai;
 pd_entry_t *pde;
 pt_entry_t *pte;

 pmap_intr_assert();
 if (pmap == PMAP_NULL || pmap == kernel_pmap) {
  *disp_p = 0;
  return KERN_INVALID_ARGUMENT;
 }

 disp = 0;
 is_ept = is_ept_pmap(pmap);

 PMAP_LOCK(pmap);

 pde = pmap_pde(pmap, va);
 if (!pde ||
     !(*pde & PTE_VALID_MASK(is_ept)) ||
     (*pde & PTE_PS)) {
  goto done;
 }

 pte = pmap_pte(pmap, va);
 if (pte == PT_ENTRY_NULL) {
  goto done;
 }

 pa = pte_to_pa(*pte);
 if (pa == 0) {
  if (PTE_IS_COMPRESSED(*pte)) {
   disp |= PMAP_QUERY_PAGE_COMPRESSED;
   if (*pte & PTE_COMPRESSED_ALT) {
    disp |= PMAP_QUERY_PAGE_COMPRESSED_ALTACCT;
   }
  }
 } else {
  disp |= PMAP_QUERY_PAGE_PRESENT;
  pai = pa_index(pa);
  if (!IS_MANAGED_PAGE(pai)) {
  } else if (pmap_pv_is_altacct(pmap, va, pai)) {
   assert(IS_INTERNAL_PAGE(pai));
   disp |= PMAP_QUERY_PAGE_INTERNAL;
   disp |= PMAP_QUERY_PAGE_ALTACCT;
  } else if (IS_REUSABLE_PAGE(pai)) {
   disp |= PMAP_QUERY_PAGE_REUSABLE;
  } else if (IS_INTERNAL_PAGE(pai)) {
   disp |= PMAP_QUERY_PAGE_INTERNAL;
  }
 }

done:
 PMAP_UNLOCK(pmap);
 *disp_p = disp;
 return KERN_SUCCESS;
}
