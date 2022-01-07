
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ ppnum_t ;
typedef int pmap_t ;
typedef int pmap_paddr_t ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 scalar_t__ pmap_find_phys (int ,int) ;

pmap_paddr_t
kdp_vtophys(
 pmap_t pmap,
 vm_offset_t va)
{
 pmap_paddr_t pa;
 ppnum_t pp;

 pp = pmap_find_phys(pmap, va);
 if(!pp) return 0;

 pa = ((pmap_paddr_t)pp << PAGE_SHIFT) | (va & PAGE_MASK);

 return(pa);
}
