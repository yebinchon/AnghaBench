
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 scalar_t__ IS_MANAGED_PAGE (int) ;
 int LOCK_PVH (int) ;
 int PHYS_NOENCRYPT ;
 int UNLOCK_PVH (int) ;
 int * pmap_phys_attributes ;
 int ppn_to_pai (int ) ;

void
pmap_set_noencrypt(ppnum_t pn)
{
 int pai;

 pai = ppn_to_pai(pn);

 if (IS_MANAGED_PAGE(pai)) {
  LOCK_PVH(pai);

  pmap_phys_attributes[pai] |= PHYS_NOENCRYPT;

  UNLOCK_PVH(pai);
 }
}
