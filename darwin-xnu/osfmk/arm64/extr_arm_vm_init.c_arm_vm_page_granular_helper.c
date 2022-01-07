
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int tt_entry_t ;
typedef int pt_entry_t ;
typedef int pmap_paddr_t ;
typedef int addr64_t ;


 int ARM_PGBYTES ;
 int ARM_PTE_AF ;
 int ARM_PTE_AP (int) ;
 int ARM_PTE_ATTRINDX (int ) ;
 int ARM_PTE_HINT ;
 int ARM_PTE_HINT_ADDR_SHIFT ;
 int ARM_PTE_NG ;
 int ARM_PTE_NX ;
 int ARM_PTE_PNX ;
 int ARM_PTE_SH (int ) ;
 int ARM_PTE_TYPE ;
 int ARM_PTE_TYPE_FAULT ;
 int ARM_TTE_TABLE_MASK ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int ARM_TTE_VALID ;
 int ARM_TT_L2_OFFMASK ;
 unsigned int ARM_TT_L3_INDEX_MASK ;
 unsigned int ARM_TT_L3_SHIFT ;
 int CACHE_ATTRINDX_DEFAULT ;
 int SH_OUTER_MEMORY ;
 scalar_t__ alloc_ptpage (int) ;
 int* arm_kva_to_tte (int) ;
 int assert (int) ;
 int bzero (int*,int) ;
 int gPhysBase ;
 int gVirtBase ;
 scalar_t__ kva_active ;
 int kvtophys (int) ;
 int pa_to_tte (int ) ;
 scalar_t__ phystokv (int) ;
 int real_avail_end ;
 int round_page (int) ;
 int round_up_pte_hint_address (int) ;
 scalar_t__ use_contiguous_hint ;

__attribute__((used)) static void
arm_vm_page_granular_helper(vm_offset_t start, vm_offset_t _end, vm_offset_t va, pmap_paddr_t pa_offset,
                            int pte_prot_APX, int pte_prot_XN, bool force_page_granule,
                            pt_entry_t **deferred_pte, pt_entry_t *deferred_ptmp)
{
 if (va & ARM_TT_L2_OFFMASK) {
  tt_entry_t *tte2;
  tt_entry_t tmplate;
  pmap_paddr_t pa;
  pt_entry_t *ppte, *recursive_pte = ((void*)0), ptmp, recursive_ptmp = 0;
  addr64_t ppte_phys;
  unsigned i;

  va &= ~ARM_TT_L2_OFFMASK;
  pa = va - gVirtBase + gPhysBase - pa_offset;

  if (pa >= real_avail_end)
   return;

  tte2 = arm_kva_to_tte(va);

  assert(_end >= va);
  tmplate = *tte2;

  if (ARM_TTE_TYPE_TABLE == (tmplate & ARM_TTE_TYPE_MASK)) {

   ppte = (pt_entry_t *)phystokv((tmplate & ARM_TTE_TABLE_MASK));
  } else {

   ppte = (pt_entry_t*)alloc_ptpage(pa_offset == 0);
   bzero(ppte, ARM_PGBYTES);
   ppte_phys = kvtophys((vm_offset_t)ppte);

   *tte2 = pa_to_tte(ppte_phys) | ARM_TTE_TYPE_TABLE | ARM_TTE_VALID;
  }

  vm_offset_t len = _end - va;
  if ((pa + len) > real_avail_end)
   _end -= (pa + len - real_avail_end);
  assert((start - gVirtBase + gPhysBase - pa_offset) >= gPhysBase);




  vm_offset_t rounded_end = round_page(_end);

  for (i = 0; i <= (ARM_TT_L3_INDEX_MASK>>ARM_TT_L3_SHIFT); i++) {
   if ((start <= va) && (va < rounded_end)) {

    ptmp = pa | ARM_PTE_AF | ARM_PTE_SH(SH_OUTER_MEMORY) | ARM_PTE_TYPE;
    ptmp = ptmp | ARM_PTE_ATTRINDX(CACHE_ATTRINDX_DEFAULT);
    ptmp = ptmp | ARM_PTE_AP(pte_prot_APX);
    ptmp = ptmp | ARM_PTE_NX;




    if (pte_prot_XN) {
     ptmp = ptmp | ARM_PTE_PNX;
    }






    if ((va >= round_up_pte_hint_address(start)) && (round_up_pte_hint_address(va + 1) <= _end) &&
        !force_page_granule && use_contiguous_hint) {
     assert((va & ((1 << ARM_PTE_HINT_ADDR_SHIFT) - 1)) == ((pa & ((1 << ARM_PTE_HINT_ADDR_SHIFT) - 1))));
     ptmp |= ARM_PTE_HINT;
    }







    assert(!kva_active || (ppte[i] == ARM_PTE_TYPE_FAULT) || ((ppte[i] & ARM_PTE_HINT) == (ptmp & ARM_PTE_HINT)));
    if (kva_active && ((pt_entry_t*)(phystokv(pa)) == ppte)) {
     assert(recursive_pte == ((void*)0));
     assert(!force_page_granule);
     recursive_pte = &ppte[i];
     recursive_ptmp = ptmp;
    } else if ((deferred_pte != ((void*)0)) && (&ppte[i] == &recursive_pte[1])) {
     assert(*deferred_pte == ((void*)0));
     assert(deferred_ptmp != ((void*)0));
     *deferred_pte = &ppte[i];
     *deferred_ptmp = ptmp;
    } else {
     ppte[i] = ptmp;
    }
   }

   va += ARM_PGBYTES;
   pa += ARM_PGBYTES;
  }
  if (recursive_pte != ((void*)0))
   *recursive_pte = recursive_ptmp;
 }
}
