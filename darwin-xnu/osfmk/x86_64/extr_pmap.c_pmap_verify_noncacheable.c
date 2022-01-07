
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt_entry_t ;


 int INTEL_PTE_NCACHE ;
 int INTEL_PTE_PTA ;
 int kernel_pmap ;
 int panic (char*,uintptr_t,...) ;
 int* pmap_pte (int ,uintptr_t) ;

void pmap_verify_noncacheable(uintptr_t vaddr) {
 pt_entry_t *ptep = ((void*)0);
 ptep = pmap_pte(kernel_pmap, vaddr);
 if (ptep == ((void*)0)) {
  panic("pmap_verify_noncacheable: no translation for 0x%lx", vaddr);
 }

 if (*ptep & (INTEL_PTE_NCACHE))
  return;

 if (*ptep & (INTEL_PTE_PTA))
  return;
 panic("pmap_verify_noncacheable: IO read from a cacheable address? address: 0x%lx, PTE: %p, *PTE: 0x%llx", vaddr, ptep, *ptep);
}
