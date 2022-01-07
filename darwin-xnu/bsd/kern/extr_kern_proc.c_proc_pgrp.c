
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pgrp {int pg_listflags; int pg_refcount; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int p_listflag; struct pgrp* p_pgrp; int p_pgrpid; } ;


 int PGRP_FLAG_DEAD ;
 int PGRP_FLAG_TERMINATE ;
 struct pgrp* PGRP_NULL ;
 TYPE_1__* PROC_NULL ;
 int P_LIST_PGRPTRANS ;
 int P_LIST_PGRPTRWAIT ;
 int assert (int ) ;
 int msleep (int *,int ,int ,char*,int ) ;
 int panic (char*) ;
 int proc_list_lock () ;
 int proc_list_mlock ;
 int proc_list_unlock () ;

struct pgrp *
proc_pgrp(proc_t p)
{
 struct pgrp * pgrp;

 if (p == PROC_NULL)
  return(PGRP_NULL);
 proc_list_lock();

 while ((p->p_listflag & P_LIST_PGRPTRANS) == P_LIST_PGRPTRANS) {
  p->p_listflag |= P_LIST_PGRPTRWAIT;
  (void)msleep(&p->p_pgrpid, proc_list_mlock, 0, "proc_pgrp", 0);
 }

 pgrp = p->p_pgrp;

 assert(pgrp != ((void*)0));

 if (pgrp != PGRP_NULL) {
  pgrp->pg_refcount++;
  if ((pgrp->pg_listflags & (PGRP_FLAG_TERMINATE | PGRP_FLAG_DEAD)) != 0)
   panic("proc_pgrp: ref being povided for dead pgrp");
 }

 proc_list_unlock();

 return(pgrp);
}
