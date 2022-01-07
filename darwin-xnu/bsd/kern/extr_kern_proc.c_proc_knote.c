
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_klist; } ;


 int KNOTE (int *,long) ;
 int proc_klist_lock () ;
 int proc_klist_unlock () ;

void
proc_knote(struct proc * p, long hint)
{
 proc_klist_lock();
 KNOTE(&p->p_klist, hint);
 proc_klist_unlock();
}
