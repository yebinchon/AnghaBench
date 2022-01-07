
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_flags; } ;
struct proc {int dummy; } ;


 int WQ_PROC_SUSPENDED ;
 int os_atomic_or (int *,int ,int ) ;
 struct workqueue* proc_get_wqptr (struct proc*) ;
 int relaxed ;

void
workq_proc_suspended(struct proc *p)
{
 struct workqueue *wq = proc_get_wqptr(p);

 if (wq) os_atomic_or(&wq->wq_flags, WQ_PROC_SUSPENDED, relaxed);
}
