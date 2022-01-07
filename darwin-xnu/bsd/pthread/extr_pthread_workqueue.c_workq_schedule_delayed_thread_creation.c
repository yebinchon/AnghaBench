
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int thread_call_t ;
struct workqueue {int wq_thread_call_last_run; int wq_timer_interval; int wq_delayed_call; int wq_reqcount; } ;
struct TYPE_4__ {int abstime; } ;
struct TYPE_3__ {int abstime; } ;


 int TRACE_wq_start_add_timer ;
 int WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART ;
 int WQ_DELAYED_CALL_PENDED ;
 uintptr_t WQ_DELAYED_CALL_SCHEDULED ;
 int WQ_IMMEDIATE_CALL_PENDED ;
 int WQ_IMMEDIATE_CALL_SCHEDULED ;
 int WQ_TRACE_WQ (int ,struct workqueue*,int ,int ,int,int ) ;
 int _wq_flags (struct workqueue*) ;
 int assert (int) ;
 int mach_absolute_time () ;
 int panic (char*) ;
 int preemption_enabled () ;
 scalar_t__ thread_call_enter1_delayed (int ,void*,int) ;
 int workq_thread_call_prepost (struct workqueue*,uintptr_t,int ,int) ;
 TYPE_2__ wq_max_timer_interval ;
 TYPE_1__ wq_stalled_window ;

__attribute__((used)) static bool
workq_schedule_delayed_thread_creation(struct workqueue *wq, int flags)
{
 assert(!preemption_enabled());

 if (!workq_thread_call_prepost(wq, WQ_DELAYED_CALL_SCHEDULED,
   WQ_DELAYED_CALL_PENDED, WQ_IMMEDIATE_CALL_PENDED |
   WQ_IMMEDIATE_CALL_SCHEDULED)) {
  return 0;
 }

 uint64_t now = mach_absolute_time();

 if (flags & WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART) {

 } else if (now - wq->wq_thread_call_last_run <= wq->wq_timer_interval) {
  wq->wq_timer_interval *= 2;
  if (wq->wq_timer_interval > wq_max_timer_interval.abstime) {
   wq->wq_timer_interval = wq_max_timer_interval.abstime;
  }
 } else if (now - wq->wq_thread_call_last_run > 2 * wq->wq_timer_interval) {
  wq->wq_timer_interval /= 2;
  if (wq->wq_timer_interval < wq_stalled_window.abstime) {
   wq->wq_timer_interval = wq_stalled_window.abstime;
  }
 }

 WQ_TRACE_WQ(TRACE_wq_start_add_timer, wq, wq->wq_reqcount,
   _wq_flags(wq), wq->wq_timer_interval, 0);

 thread_call_t call = wq->wq_delayed_call;
 uintptr_t arg = WQ_DELAYED_CALL_SCHEDULED;
 uint64_t deadline = now + wq->wq_timer_interval;
 if (thread_call_enter1_delayed(call, (void *)arg, deadline)) {
  panic("delayed_call was already enqueued");
 }
 return 1;
}
