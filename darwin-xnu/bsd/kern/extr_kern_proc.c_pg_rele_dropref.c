
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int pg_refcount; int pg_listflags; } ;


 int PGRP_FLAG_TERMINATE ;
 int pgdelete_dropref (struct pgrp*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

void
pg_rele_dropref(struct pgrp * pgrp)
{
 proc_list_lock();
 if ((pgrp->pg_refcount == 1) && ((pgrp->pg_listflags & PGRP_FLAG_TERMINATE) == PGRP_FLAG_TERMINATE)) {
  proc_list_unlock();
  pgdelete_dropref(pgrp);
  return;
 }

 pgrp->pg_refcount--;
 proc_list_unlock();
}
