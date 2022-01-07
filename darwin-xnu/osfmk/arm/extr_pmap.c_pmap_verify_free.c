
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pv_entry_t ;
typedef int ppnum_t ;
typedef scalar_t__ pmap_paddr_t ;
typedef int boolean_t ;


 int FALSE ;
 int PVH_TYPE_NULL ;
 int assert (int) ;
 scalar_t__ pa_index (scalar_t__) ;
 int pa_valid (scalar_t__) ;
 int ** pai_to_pvh (int) ;
 scalar_t__ ptoa (int ) ;
 int pvh_test_type (int **,int ) ;
 scalar_t__ vm_page_fictitious_addr ;

boolean_t
pmap_verify_free(
 ppnum_t ppnum)
{
 pv_entry_t **pv_h;
 int pai;
 pmap_paddr_t phys = ptoa(ppnum);

 assert(phys != vm_page_fictitious_addr);

 if (!pa_valid(phys))
  return (FALSE);

 pai = (int)pa_index(phys);
 pv_h = pai_to_pvh(pai);

 return (pvh_test_type(pv_h, PVH_TYPE_NULL));
}
