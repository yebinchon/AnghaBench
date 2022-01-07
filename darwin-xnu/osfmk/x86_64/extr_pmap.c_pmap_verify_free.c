
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pv_rooted_entry_t ;
typedef scalar_t__ ppnum_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ pmap; } ;


 int FALSE ;
 int IS_MANAGED_PAGE (int) ;
 scalar_t__ PMAP_NULL ;
 int TRUE ;
 int assert (int) ;
 TYPE_1__* pai_to_pvh (scalar_t__) ;
 int pmap_initialized ;
 int ppn_to_pai (scalar_t__) ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;

boolean_t
pmap_verify_free(
   ppnum_t pn)
{
 pv_rooted_entry_t pv_h;
 int pai;
 boolean_t result;

 assert(pn != vm_page_fictitious_addr);

 if (!pmap_initialized)
  return(TRUE);

 if (pn == vm_page_guard_addr)
  return TRUE;

 pai = ppn_to_pai(pn);
 if (!IS_MANAGED_PAGE(pai))
  return(FALSE);
 pv_h = pai_to_pvh(pn);
 result = (pv_h->pmap == PMAP_NULL);
 return(result);
}
