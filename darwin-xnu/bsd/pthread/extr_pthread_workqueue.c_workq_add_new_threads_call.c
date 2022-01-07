
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct workqueue {int wq_thidlecount; int wq_nthreads; int wq_flags; int wq_thread_call_last_run; } ;
typedef void* proc_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int TRACE_wq_add_timer ;
 int WORKQ_THREADREQ_CAN_CREATE_THREADS ;
 int WQ_DELAYED_CALL_SCHEDULED ;
 int WQ_IMMEDIATE_CALL_SCHEDULED ;
 int WQ_TRACE_WQ (int,struct workqueue*,int ,int ,int ,int ) ;
 int _wq_flags (struct workqueue*) ;
 int assert (int) ;
 int mach_absolute_time () ;
 int os_atomic_and (int *,int ,int ) ;
 struct workqueue* proc_get_wqptr (void*) ;
 int release ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_schedule_creator (void*,struct workqueue*,int ) ;
 int workq_unlock (struct workqueue*) ;

__attribute__((used)) static void
workq_add_new_threads_call(void *_p, void *flags)
{
 proc_t p = _p;
 struct workqueue *wq = proc_get_wqptr(p);
 uint32_t my_flag = (uint32_t)(uintptr_t)flags;





 if (!wq) return;

 assert((my_flag == WQ_DELAYED_CALL_SCHEDULED) ||
   (my_flag == WQ_IMMEDIATE_CALL_SCHEDULED));

 WQ_TRACE_WQ(TRACE_wq_add_timer | DBG_FUNC_START, wq, _wq_flags(wq),
   wq->wq_nthreads, wq->wq_thidlecount, 0);

 workq_lock_spin(wq);

 wq->wq_thread_call_last_run = mach_absolute_time();
 os_atomic_and(&wq->wq_flags, ~my_flag, release);


 workq_schedule_creator(p, wq, WORKQ_THREADREQ_CAN_CREATE_THREADS);

 workq_unlock(wq);

 WQ_TRACE_WQ(TRACE_wq_add_timer | DBG_FUNC_END, wq, 0,
   wq->wq_nthreads, wq->wq_thidlecount, 0);
}
