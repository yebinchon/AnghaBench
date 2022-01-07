
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 scalar_t__ IS_MANAGED_PAGE (int) ;
 int UNLOCK_PVH (int) ;
 int phys_backup_lock ;
 int ppn_to_pai (int ) ;
 int simple_unlock (int *) ;

void
pmap_unlock_phys_page(ppnum_t pn)
{
 int pai;

 pai = ppn_to_pai(pn);

 if (IS_MANAGED_PAGE(pai)) {
  UNLOCK_PVH(pai);
 } else
  simple_unlock(&phys_backup_lock);
}
