
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* workq_threadreq_t ;
struct workqueue {scalar_t__ wq_nthreads; int wq_fulfilled; struct uthread* wq_creator; scalar_t__ wq_thidlecount; int wq_reqcount; } ;
struct TYPE_7__ {scalar_t__ yields; int fulfilled_snapshot; } ;
struct TYPE_8__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; struct workqueue* uu_thread; } ;
typedef scalar_t__ proc_t ;
struct TYPE_9__ {int tr_qos; } ;


 int AST_KEVENT_REDRIVE_THREADREQ ;
 int DBG_FUNC_NONE ;
 int TRACE_wq_creator_select ;
 struct workqueue* TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_INHERITOR_THREAD ;
 int TURNSTILE_INHERITOR_WORKQ ;
 int WORKQ_THREADREQ_CAN_CREATE_THREADS ;
 int WORKQ_THREADREQ_CREATOR_SYNC_UPDATE ;
 int WORKQ_THREADREQ_CREATOR_TRANSFER ;
 int WORKQ_THREADREQ_SET_AST_ON_FAILURE ;
 int WQ_TRACE_WQ (int,struct workqueue*,int,int ,int ,int ) ;
 scalar_t__ __improbable (int) ;
 int act_set_astkevent (int ,int ) ;
 int assert (int) ;
 int current_thread () ;
 int thread_tid (struct workqueue*) ;
 scalar_t__ workq_add_new_idle_thread (scalar_t__,struct workqueue*) ;
 int workq_lock_held (struct workqueue*) ;
 struct uthread* workq_pop_idle_thread (struct workqueue*) ;
 int workq_schedule_delayed_thread_creation (struct workqueue*,int ) ;
 int workq_schedule_immediate_thread_creation (struct workqueue*) ;
 scalar_t__ workq_thread_needs_priority_change (TYPE_3__*,struct uthread*) ;
 int workq_thread_reset_pri (struct workqueue*,struct uthread*,TYPE_3__*) ;
 int workq_thread_wakeup (struct uthread*) ;
 TYPE_3__* workq_threadreq_select_for_creator (struct workqueue*) ;
 int workq_turnstile_update_inheritor (struct workqueue*,struct workqueue*,int ) ;
 scalar_t__ wq_max_threads ;

__attribute__((used)) static void
workq_schedule_creator(proc_t p, struct workqueue *wq, int flags)
{
 workq_threadreq_t req;
 struct uthread *uth;

 workq_lock_held(wq);
 assert(p || (flags & WORKQ_THREADREQ_CAN_CREATE_THREADS) == 0);

again:
 uth = wq->wq_creator;

 if (!wq->wq_reqcount) {
  if (uth == ((void*)0)) {
   workq_turnstile_update_inheritor(wq, TURNSTILE_INHERITOR_NULL, 0);
  }
  return;
 }

 req = workq_threadreq_select_for_creator(wq);
 if (req == ((void*)0)) {
  if (flags & WORKQ_THREADREQ_CREATOR_SYNC_UPDATE) {
   assert((flags & WORKQ_THREADREQ_CREATOR_TRANSFER) == 0);




  } else {
   workq_turnstile_update_inheritor(wq, wq, TURNSTILE_INHERITOR_WORKQ);
  }
  return;
 }

 if (uth) {



  if (workq_thread_needs_priority_change(req, uth)) {
   WQ_TRACE_WQ(TRACE_wq_creator_select | DBG_FUNC_NONE,
     wq, 1, thread_tid(uth->uu_thread), req->tr_qos, 0);
   workq_thread_reset_pri(wq, uth, req);
  }
 } else if (wq->wq_thidlecount) {



  wq->wq_creator = uth = workq_pop_idle_thread(wq);
  if (workq_thread_needs_priority_change(req, uth)) {
   workq_thread_reset_pri(wq, uth, req);
  }
  workq_turnstile_update_inheritor(wq, uth->uu_thread,
    TURNSTILE_INHERITOR_THREAD);
  WQ_TRACE_WQ(TRACE_wq_creator_select | DBG_FUNC_NONE,
    wq, 2, thread_tid(uth->uu_thread), req->tr_qos, 0);
  uth->uu_save.uus_workq_park_data.fulfilled_snapshot = wq->wq_fulfilled;
  uth->uu_save.uus_workq_park_data.yields = 0;
  workq_thread_wakeup(uth);
 } else {



  if (__improbable(wq->wq_nthreads >= wq_max_threads)) {

  } else if (flags & WORKQ_THREADREQ_SET_AST_ON_FAILURE) {
   act_set_astkevent(current_thread(), AST_KEVENT_REDRIVE_THREADREQ);
  } else if (!(flags & WORKQ_THREADREQ_CAN_CREATE_THREADS)) {

   workq_schedule_immediate_thread_creation(wq);
  } else if (workq_add_new_idle_thread(p, wq)) {
   goto again;
  } else {
   workq_schedule_delayed_thread_creation(wq, 0);
  }

  if (flags & WORKQ_THREADREQ_CREATOR_TRANSFER) {






   workq_turnstile_update_inheritor(wq, ((void*)0), 0);
  }
 }
}
