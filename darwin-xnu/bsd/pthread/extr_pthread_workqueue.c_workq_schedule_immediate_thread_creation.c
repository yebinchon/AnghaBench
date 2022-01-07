
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_immediate_call; int wq_reqcount; } ;


 int TRACE_wq_start_add_timer ;
 int WQ_IMMEDIATE_CALL_PENDED ;
 uintptr_t WQ_IMMEDIATE_CALL_SCHEDULED ;
 int WQ_TRACE_WQ (int ,struct workqueue*,int ,int ,int ,int ) ;
 int _wq_flags (struct workqueue*) ;
 int assert (int) ;
 int panic (char*) ;
 int preemption_enabled () ;
 scalar_t__ thread_call_enter1 (int ,void*) ;
 scalar_t__ workq_thread_call_prepost (struct workqueue*,uintptr_t,int ,int ) ;

__attribute__((used)) static void
workq_schedule_immediate_thread_creation(struct workqueue *wq)
{
 assert(!preemption_enabled());

 if (workq_thread_call_prepost(wq, WQ_IMMEDIATE_CALL_SCHEDULED,
   WQ_IMMEDIATE_CALL_PENDED, 0)) {
  WQ_TRACE_WQ(TRACE_wq_start_add_timer, wq, wq->wq_reqcount,
    _wq_flags(wq), 0, 0);

  uintptr_t arg = WQ_IMMEDIATE_CALL_SCHEDULED;
  if (thread_call_enter1(wq->wq_immediate_call, (void *)arg)) {
   panic("immediate_call was already enqueued");
  }
 }
}
