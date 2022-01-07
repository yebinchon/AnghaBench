
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_qos_t ;
struct workqueue {scalar_t__ wq_reqcount; } ;
struct uu_workq_policy {scalar_t__ qos_bucket; } ;
struct uthread {int uu_thread; struct uu_workq_policy uu_workq_pri; } ;
typedef int proc_t ;


 int WORKQ_THREADREQ_CAN_CREATE_THREADS ;
 int _wq_thactive_move (struct workqueue*,scalar_t__,scalar_t__) ;
 int thread_set_workq_override (int ,scalar_t__) ;
 scalar_t__ workq_pri_bucket (struct uu_workq_policy) ;
 scalar_t__ workq_pri_override (struct uu_workq_policy) ;
 int workq_schedule_creator (int ,struct workqueue*,int) ;

__attribute__((used)) static void
workq_thread_update_bucket(proc_t p, struct workqueue *wq, struct uthread *uth,
  struct uu_workq_policy old_pri, struct uu_workq_policy new_pri,
  bool force_run)
{
 thread_qos_t old_bucket = old_pri.qos_bucket;
 thread_qos_t new_bucket = workq_pri_bucket(new_pri);

 if (old_bucket != new_bucket) {
  _wq_thactive_move(wq, old_bucket, new_bucket);
 }

 new_pri.qos_bucket = new_bucket;
 uth->uu_workq_pri = new_pri;

 if (workq_pri_override(old_pri) != new_bucket) {
  thread_set_workq_override(uth->uu_thread, new_bucket);
 }

 if (wq->wq_reqcount && (old_bucket > new_bucket || force_run)) {
  int flags = WORKQ_THREADREQ_CAN_CREATE_THREADS;
  if (old_bucket > new_bucket) {
   flags = 0;
  }
  workq_schedule_creator(p, wq, flags);
 }
}
