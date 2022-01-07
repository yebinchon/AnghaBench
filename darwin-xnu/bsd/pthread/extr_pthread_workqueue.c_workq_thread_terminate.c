
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {scalar_t__ wq_reqcount; int wq_nthreads; int wq_thidlecount; int wq_thrunlist; } ;
struct uthread {int uu_workq_flags; int uu_thread; } ;
struct proc {int dummy; } ;


 int DBG_FUNC_END ;
 int TAILQ_REMOVE (int *,struct uthread*,int ) ;
 int TRACE_wq_thread_terminate ;
 int UT_WORKQ_DYING ;
 int WORKQ_THREADREQ_CAN_CREATE_THREADS ;
 int WQ_TRACE_WQ (int,struct workqueue*,int ,int ,int ,int ) ;
 struct workqueue* proc_get_wqptr_fast (struct proc*) ;
 int thread_deallocate (int ) ;
 int uu_workq_entry ;
 int workq_death_policy_evaluate (struct workqueue*,int) ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_schedule_creator (struct proc*,struct workqueue*,int ) ;
 int workq_unlock (struct workqueue*) ;
 scalar_t__ wq_max_threads ;

void
workq_thread_terminate(struct proc *p, struct uthread *uth)
{
 struct workqueue *wq = proc_get_wqptr_fast(p);

 workq_lock_spin(wq);
 TAILQ_REMOVE(&wq->wq_thrunlist, uth, uu_workq_entry);
 if (uth->uu_workq_flags & UT_WORKQ_DYING) {
  WQ_TRACE_WQ(TRACE_wq_thread_terminate | DBG_FUNC_END,
    wq, wq->wq_thidlecount, 0, 0, 0);
  workq_death_policy_evaluate(wq, 1);
 }
 if (wq->wq_nthreads-- == wq_max_threads) {




  if (wq->wq_reqcount) {
   workq_schedule_creator(p, wq, WORKQ_THREADREQ_CAN_CREATE_THREADS);
  }
 }
 workq_unlock(wq);

 thread_deallocate(uth->uu_thread);
}
