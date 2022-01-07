
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int pmap_paddr_t ;


 int LOCK_PVH (int) ;
 scalar_t__ pa_index (int ) ;
 scalar_t__ pa_valid (int ) ;
 int phys_backup_lock ;
 int ptoa (int ) ;
 int simple_lock (int *) ;

void
pmap_lock_phys_page(ppnum_t pn)
{
 int pai;
 pmap_paddr_t phys = ptoa(pn);

 if (pa_valid(phys)) {
  pai = (int)pa_index(phys);
  LOCK_PVH(pai);
 } else
 simple_lock(&phys_backup_lock);
}
