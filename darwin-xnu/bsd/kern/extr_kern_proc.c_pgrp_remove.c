
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int p_listflag; int * p_pgrp; int p_pgrpid; } ;
struct TYPE_2__ {scalar_t__ lh_first; } ;
struct pgrp {scalar_t__ pg_membercnt; TYPE_1__ pg_members; } ;


 int LIST_REMOVE (struct proc*,int ) ;
 int PGRPID_DEAD ;
 struct pgrp* PGRP_NULL ;
 int P_LIST_INPGRP ;
 int p_pglist ;
 int panic (char*,...) ;
 int pg_rele (struct pgrp*) ;
 int pgdelete_dropref (struct pgrp*) ;
 int pgrp_lock (struct pgrp*) ;
 int pgrp_unlock (struct pgrp*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 struct pgrp* proc_pgrp (struct proc*) ;

__attribute__((used)) static void
pgrp_remove(struct proc * p)
{
 struct pgrp * pg;

 pg = proc_pgrp(p);

 proc_list_lock();




 p->p_pgrpid = PGRPID_DEAD;
 p->p_listflag &= ~P_LIST_INPGRP;
 p->p_pgrp = ((void*)0);
 proc_list_unlock();

 if (pg == PGRP_NULL)
  panic("pgrp_remove: pg is NULL");
 pgrp_lock(pg);
 pg->pg_membercnt--;

 if (pg->pg_membercnt < 0)
  panic("pgprp: -ve membercnt pgprp:%p p:%p\n",pg, p);

 LIST_REMOVE(p, p_pglist);
 if (pg->pg_members.lh_first == 0) {
  pgrp_unlock(pg);
  pgdelete_dropref(pg);
 } else {
  pgrp_unlock(pg);
  pg_rele(pg);
 }
}
