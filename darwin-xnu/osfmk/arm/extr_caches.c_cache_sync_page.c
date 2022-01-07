
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int ppnum_t ;
typedef int pmap_paddr_t ;


 int CleanPoU_DcacheRegion (int ,int ) ;
 int FlushPoC_Dcache () ;
 int InvalidatePoU_Icache () ;
 int InvalidatePoU_IcacheRegion (int ,int ) ;
 int PAGE_SIZE ;
 scalar_t__ isphysmem (int ) ;
 int phystokv (int ) ;
 int ptoa (int ) ;

void
cache_sync_page(
 ppnum_t pp
)
{
        pmap_paddr_t paddr = ptoa(pp);

 if (isphysmem(paddr)) {
  vm_offset_t vaddr = phystokv(paddr);

  CleanPoU_DcacheRegion(vaddr, PAGE_SIZE);



  InvalidatePoU_Icache();

 } else {
  FlushPoC_Dcache();
  InvalidatePoU_Icache();
 };
}
