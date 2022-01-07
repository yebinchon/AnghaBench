
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* workq_threadreq_t ;
struct workqueue {TYPE_1__* wq_event_manager_threadreq; int wq_reqcount; } ;
struct TYPE_4__ {scalar_t__ tr_count; scalar_t__ tr_qos; int tr_flags; int tr_entry; } ;


 int PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ;
 int TR_FLAG_OVERCOMMIT ;
 scalar_t__ WORKQ_THREAD_QOS_MANAGER ;
 int _wq_thactive_refresh_best_constrained_req_qos (struct workqueue*) ;
 int assert (int) ;
 scalar_t__ priority_queue_remove (int ,int *,int ) ;
 int workq_priority_queue_for_req (struct workqueue*,TYPE_1__*) ;

__attribute__((used)) static bool
workq_threadreq_dequeue(struct workqueue *wq, workq_threadreq_t req)
{
 wq->wq_reqcount--;

 if (--req->tr_count == 0) {
  if (req->tr_qos == WORKQ_THREAD_QOS_MANAGER) {
   assert(wq->wq_event_manager_threadreq == req);
   assert(req->tr_count == 0);
   wq->wq_event_manager_threadreq = ((void*)0);
   return 1;
  }
  if (priority_queue_remove(workq_priority_queue_for_req(wq, req),
    &req->tr_entry, PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
   if ((req->tr_flags & TR_FLAG_OVERCOMMIT) == 0) {
    _wq_thactive_refresh_best_constrained_req_qos(wq);
   }
   return 1;
  }
 }
 return 0;
}
