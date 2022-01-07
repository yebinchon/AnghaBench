
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef int pt_entry_t ;
typedef int ppnum_t ;
typedef int pmap_t ;
typedef scalar_t__ boolean_t ;


 int INTEL_EPT_EX ;
 int INTEL_PTE_USER ;
 int * PDPT_ENTRY_NULL ;
 int * PD_ENTRY_NULL ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_READ (scalar_t__) ;
 int PTE_WRITE (scalar_t__) ;
 scalar_t__ PT_ENTRY_NULL ;
 int i386_ptob (int ) ;
 scalar_t__ is_ept_pmap (int ) ;
 int pa_to_pte (int ) ;
 int panic (char*) ;
 int * pmap64_pde (int ,int ) ;
 int * pmap64_pdpt (int ,int ) ;
 int * pmap64_pml4 (int ,int ) ;
 int * pmap64_user_pml4 (int ,int ) ;
 int pmap_next_page_hi (int *) ;
 scalar_t__ pmap_pte (int ,int ) ;
 int pmap_store_pte (int *,int) ;
 int pmap_zero_page (int ) ;

void
pmap_pre_expand(pmap_t pmap, vm_map_offset_t vaddr)
{
 ppnum_t pn;
 pt_entry_t *pte;
 boolean_t is_ept = is_ept_pmap(pmap);

 PMAP_LOCK(pmap);

 if(pmap64_pdpt(pmap, vaddr) == PDPT_ENTRY_NULL) {
  if (!pmap_next_page_hi(&pn))
   panic("pmap_pre_expand");

  pmap_zero_page(pn);

  pte = pmap64_pml4(pmap, vaddr);

  pmap_store_pte(pte, pa_to_pte(i386_ptob(pn))
    | PTE_READ(is_ept)
    | (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
    | PTE_WRITE(is_ept));

  pte = pmap64_user_pml4(pmap, vaddr);

  pmap_store_pte(pte, pa_to_pte(i386_ptob(pn))
    | PTE_READ(is_ept)
    | (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
    | PTE_WRITE(is_ept));

 }

 if(pmap64_pde(pmap, vaddr) == PD_ENTRY_NULL) {
  if (!pmap_next_page_hi(&pn))
   panic("pmap_pre_expand");

  pmap_zero_page(pn);

  pte = pmap64_pdpt(pmap, vaddr);

  pmap_store_pte(pte, pa_to_pte(i386_ptob(pn))
    | PTE_READ(is_ept)
    | (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
    | PTE_WRITE(is_ept));
 }

 if(pmap_pte(pmap, vaddr) == PT_ENTRY_NULL) {
  if (!pmap_next_page_hi(&pn))
   panic("pmap_pre_expand");

  pmap_zero_page(pn);

  pte = pmap64_pde(pmap, vaddr);

  pmap_store_pte(pte, pa_to_pte(i386_ptob(pn))
    | PTE_READ(is_ept)
    | (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
    | PTE_WRITE(is_ept));
 }

 PMAP_UNLOCK(pmap);
}
