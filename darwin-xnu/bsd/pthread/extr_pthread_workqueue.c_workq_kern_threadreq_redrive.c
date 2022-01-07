
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;
struct proc {int dummy; } ;


 struct workqueue* proc_get_wqptr_fast (struct proc*) ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_schedule_creator (struct proc*,struct workqueue*,int) ;
 int workq_unlock (struct workqueue*) ;

void
workq_kern_threadreq_redrive(struct proc *p, int flags)
{
 struct workqueue *wq = proc_get_wqptr_fast(p);

 workq_lock_spin(wq);
 workq_schedule_creator(p, wq, flags);
 workq_unlock(wq);
}
