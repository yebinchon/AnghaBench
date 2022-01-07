
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_paddr_t ;
typedef int addr64_t ;


 int INTEL_OFFMASK ;
 int INTEL_PGSHIFT ;
 int kernel_pmap ;
 scalar_t__ pmap_find_phys (int ,int) ;

addr64_t
kvtophys(
 vm_offset_t addr)
{
 pmap_paddr_t pa;

 pa = ((pmap_paddr_t)pmap_find_phys(kernel_pmap, addr)) << INTEL_PGSHIFT;
 if (pa)
  pa |= (addr & INTEL_OFFMASK);

 return ((addr64_t)pa);
}
