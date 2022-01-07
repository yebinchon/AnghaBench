
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* pmap_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int asid; scalar_t__ nested; } ;


 unsigned int ARM64_FULL_TLB_FLUSH_THRESHOLD ;
 unsigned int ARM_FULL_TLB_FLUSH_THRESHOLD ;
 unsigned int ARM_SMALL_PAGE_SIZE ;
 unsigned int ARM_TT_L3_SHIFT ;
 scalar_t__ FALSE ;
 int TLBI_ASID_SHIFT ;
 scalar_t__ TRUE ;
 int arm_trunc_page (unsigned int) ;
 int flush_mmu_tlb () ;
 int flush_mmu_tlb_allentries_async (unsigned int,unsigned int) ;
 int flush_mmu_tlb_asid_async (int) ;
 int flush_mmu_tlb_async () ;
 int flush_mmu_tlb_entries_async (unsigned int,unsigned int) ;
 int flush_mmu_tlb_mva_entries_async (unsigned int) ;
 unsigned int tlbi_addr (unsigned int) ;
 unsigned int tlbi_asid (int) ;

__attribute__((used)) static void
flush_mmu_tlb_region_asid_async(
 vm_offset_t va,
 unsigned length,
 pmap_t pmap)
{
 vm_offset_t end = va + length;
 uint32_t asid;

 asid = pmap->asid;

 if ((length >> ARM_TT_L3_SHIFT) > ARM64_FULL_TLB_FLUSH_THRESHOLD) {
  boolean_t flush_all = FALSE;

  if ((asid == 0) || (pmap->nested == TRUE))
   flush_all = TRUE;
  if (flush_all)
   flush_mmu_tlb_async();
  else
   flush_mmu_tlb_asid_async((uint64_t)asid << TLBI_ASID_SHIFT);
  return;
 }
 va = tlbi_asid(asid) | tlbi_addr(va);
 end = tlbi_asid(asid) | tlbi_addr(end);
 if (pmap->nested == TRUE) {
  flush_mmu_tlb_allentries_async(va, end);
 } else {
  flush_mmu_tlb_entries_async(va, end);
 }


}
