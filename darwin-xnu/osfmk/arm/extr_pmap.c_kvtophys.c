
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_paddr_t ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int kernel_pmap ;
 int mmu_kvtop (int) ;
 scalar_t__ pmap_vtophys (int ,int) ;

pmap_paddr_t
kvtophys(
 vm_offset_t va)
{
 pmap_paddr_t pa;

 pa = mmu_kvtop(va);
 if (pa) return pa;
 pa = ((pmap_paddr_t)pmap_vtophys(kernel_pmap, va)) << PAGE_SHIFT;
 if (pa)
  pa |= (va & PAGE_MASK);

 return ((pmap_paddr_t)pa);
}
