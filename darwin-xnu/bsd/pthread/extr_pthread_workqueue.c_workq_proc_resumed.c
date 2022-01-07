
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct workqueue {int wq_flags; } ;
struct proc {int dummy; } ;


 int WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART ;
 int WQ_DELAYED_CALL_PENDED ;
 int WQ_EXITING ;
 int WQ_IMMEDIATE_CALL_PENDED ;
 int WQ_PROC_SUSPENDED ;
 int disable_preemption () ;
 int enable_preemption () ;
 int os_atomic_and_orig (int *,int,int ) ;
 struct workqueue* proc_get_wqptr (struct proc*) ;
 int relaxed ;
 int workq_schedule_delayed_thread_creation (struct workqueue*,int ) ;
 int workq_schedule_immediate_thread_creation (struct workqueue*) ;

void
workq_proc_resumed(struct proc *p)
{
 struct workqueue *wq = proc_get_wqptr(p);
 uint32_t wq_flags;

 if (!wq) return;

 wq_flags = os_atomic_and_orig(&wq->wq_flags, ~(WQ_PROC_SUSPENDED |
   WQ_DELAYED_CALL_PENDED | WQ_IMMEDIATE_CALL_PENDED), relaxed);
 if ((wq_flags & WQ_EXITING) == 0) {
  disable_preemption();
  if (wq_flags & WQ_IMMEDIATE_CALL_PENDED) {
   workq_schedule_immediate_thread_creation(wq);
  } else if (wq_flags & WQ_DELAYED_CALL_PENDED) {
   workq_schedule_delayed_thread_creation(wq,
     WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART);
  }
  enable_preemption();
 }
}
