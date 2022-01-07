
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ppnum_t ;
typedef scalar_t__ pmap_t ;
typedef int pmap_paddr_t ;
typedef int addr64_t ;
struct TYPE_2__ {scalar_t__ map; } ;


 int PAGE_SHIFT ;
 TYPE_1__* current_thread () ;
 scalar_t__ kernel_pmap ;
 int mmu_kvtop (int ) ;
 int mmu_uvtop (int ) ;
 scalar_t__ not_in_kdp ;
 int pmap_find_phys_internal (scalar_t__,int ) ;
 int pmap_vtophys (scalar_t__,int ) ;
 scalar_t__ vm_map_pmap (scalar_t__) ;

ppnum_t
pmap_find_phys(
 pmap_t pmap,
 addr64_t va)
{
 pmap_paddr_t pa=0;

 if (pmap == kernel_pmap)
  pa = mmu_kvtop(va);
 else if ((current_thread()->map) && (pmap == vm_map_pmap(current_thread()->map)))
  pa = mmu_uvtop(va);

 if (pa) return (ppnum_t)(pa >> PAGE_SHIFT);

 if (not_in_kdp) {
  return pmap_find_phys_internal(pmap, va);
 } else {
  return pmap_vtophys(pmap, va);
 }
}
