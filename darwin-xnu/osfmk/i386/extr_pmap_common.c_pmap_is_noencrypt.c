
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int FALSE ;
 int IS_MANAGED_PAGE (int) ;
 int PHYS_NOENCRYPT ;
 int TRUE ;
 int* pmap_phys_attributes ;
 int ppn_to_pai (int ) ;

boolean_t
pmap_is_noencrypt(ppnum_t pn)
{
 int pai;

 pai = ppn_to_pai(pn);

 if (!IS_MANAGED_PAGE(pai))
  return (FALSE);

 if (pmap_phys_attributes[pai] & PHYS_NOENCRYPT)
  return (TRUE);

 return (FALSE);
}
