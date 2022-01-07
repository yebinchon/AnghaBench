
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef scalar_t__ ppnum_t ;
typedef TYPE_1__* pmap_t ;
typedef int pmap_paddr_t ;
struct TYPE_5__ {int min; int max; } ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 TYPE_1__* kernel_pmap ;
 scalar_t__ pmap_find_phys (TYPE_1__*,int) ;
 int printf (char*,unsigned int,unsigned long,unsigned int,unsigned int) ;

pmap_paddr_t
kdp_vtophys(
     pmap_t pmap,
     vm_offset_t va)
{
 pmap_paddr_t pa;
 ppnum_t pp;


 if(!pmap || ((pmap != kernel_pmap) && ((va < pmap->min) || (va >= pmap->max))))
 {






  return 0;
 }

 pp = pmap_find_phys(pmap, va);
 if (!pp)
  return 0;

 pa = ((pmap_paddr_t) pp << PAGE_SHIFT) | (va & PAGE_MASK);
 return (pa);
}
