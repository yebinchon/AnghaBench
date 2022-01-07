
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int flush_mmu_tlb_region_asid_async (int ,unsigned int,int ) ;
 int kernel_pmap ;
 int sync_tlb_flush () ;

void
flush_mmu_tlb_region(
 vm_offset_t va,
 unsigned length)
{
 flush_mmu_tlb_region_asid_async(va, length, kernel_pmap);
 sync_tlb_flush();
}
