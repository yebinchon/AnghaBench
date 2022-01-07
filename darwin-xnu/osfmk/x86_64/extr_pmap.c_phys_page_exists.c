
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ppnum_t ;
typedef int boolean_t ;


 int FALSE ;
 int IS_MANAGED_PAGE (int ) ;
 int TRUE ;
 int assert (int) ;
 int pmap_initialized ;
 int ppn_to_pai (scalar_t__) ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;

boolean_t
phys_page_exists(ppnum_t pn)
{
 assert(pn != vm_page_fictitious_addr);

 if (!pmap_initialized)
  return TRUE;

 if (pn == vm_page_guard_addr)
  return FALSE;

 if (!IS_MANAGED_PAGE(ppn_to_pai(pn)))
  return FALSE;

 return TRUE;
}
