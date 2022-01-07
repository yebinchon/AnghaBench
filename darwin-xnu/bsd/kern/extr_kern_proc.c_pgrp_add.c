
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_listflag; int p_pgrpid; struct pgrp* p_pgrp; } ;
struct pgrp {int pg_listflags; scalar_t__ pg_membercnt; int pg_members; int pg_id; } ;


 int LIST_INSERT_AFTER (struct proc*,struct proc*,int ) ;
 int LIST_INSERT_HEAD (int *,struct proc*,int ) ;
 int PGRP_FLAG_DEAD ;
 int PGRP_FLAG_TERMINATE ;
 struct proc* PROC_NULL ;
 int P_LIST_INPGRP ;
 int p_pglist ;
 int panic (char*) ;
 int pgrp_lock (struct pgrp*) ;
 int pgrp_unlock (struct pgrp*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

__attribute__((used)) static void
pgrp_add(struct pgrp * pgrp, struct proc * parent, struct proc * child)
{
 proc_list_lock();
 child->p_pgrp = pgrp;
 child->p_pgrpid = pgrp->pg_id;
 child->p_listflag |= P_LIST_INPGRP;






 if ((pgrp->pg_listflags & (PGRP_FLAG_TERMINATE | PGRP_FLAG_DEAD)) == PGRP_FLAG_TERMINATE) {
  pgrp->pg_listflags &= ~PGRP_FLAG_TERMINATE;
 }

 if ((pgrp->pg_listflags & PGRP_FLAG_DEAD) == PGRP_FLAG_DEAD)
  panic("pgrp_add : pgrp is dead adding process");
 proc_list_unlock();

 pgrp_lock(pgrp);
 pgrp->pg_membercnt++;
 if ( parent != PROC_NULL) {
  LIST_INSERT_AFTER(parent, child, p_pglist);
  }else {
  LIST_INSERT_HEAD(&pgrp->pg_members, child, p_pglist);
 }
 pgrp_unlock(pgrp);

 proc_list_lock();
 if (((pgrp->pg_listflags & (PGRP_FLAG_TERMINATE | PGRP_FLAG_DEAD)) == PGRP_FLAG_TERMINATE) && (pgrp->pg_membercnt != 0)) {
  pgrp->pg_listflags &= ~PGRP_FLAG_TERMINATE;
 }
 proc_list_unlock();
}
