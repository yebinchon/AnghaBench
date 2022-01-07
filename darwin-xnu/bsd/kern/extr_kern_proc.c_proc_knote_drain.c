
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int p_klist; } ;
struct TYPE_2__ {int p_proc; } ;
struct knote {TYPE_1__ kn_ptr; } ;


 int KNOTE_DETACH (int *,struct knote*) ;
 int PROC_NULL ;
 struct knote* SLIST_FIRST (int *) ;
 int proc_klist_lock () ;
 int proc_klist_unlock () ;

void
proc_knote_drain(struct proc *p)
{
 struct knote *kn = ((void*)0);




 proc_klist_lock();
 while ((kn = SLIST_FIRST(&p->p_klist))) {
  kn->kn_ptr.p_proc = PROC_NULL;
  KNOTE_DETACH(&p->p_klist, kn);
 }
 proc_klist_unlock();
}
