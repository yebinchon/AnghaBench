
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct workqueue {int dummy; } ;
struct uu_workq_policy {int qos_override; } ;
struct uthread {struct uu_workq_policy uu_workq_pri; } ;
typedef int proc_t ;


 int DBG_FUNC_NONE ;
 int EPERM ;
 int THREAD_QOS_UNSPECIFIED ;
 int THREAD_TAG_WORKQUEUE ;
 int TRACE_wq_override_reset ;
 int WQ_TRACE_WQ (int,struct workqueue*,int ,int ,int ,int ) ;
 struct uthread* get_bsdthread_info (int ) ;
 struct workqueue* proc_get_wqptr (int ) ;
 int thread_get_tag (int ) ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_thread_update_bucket (int ,struct workqueue*,struct uthread*,struct uu_workq_policy,struct uu_workq_policy,int) ;
 int workq_unlock (struct workqueue*) ;

__attribute__((used)) static int
workq_thread_reset_dispatch_override(proc_t p, thread_t thread)
{
 struct uu_workq_policy old_pri, new_pri;
 struct workqueue *wq = proc_get_wqptr(p);
 struct uthread *uth = get_bsdthread_info(thread);

 if ((thread_get_tag(thread) & THREAD_TAG_WORKQUEUE) == 0) {
  return EPERM;
 }

 WQ_TRACE_WQ(TRACE_wq_override_reset | DBG_FUNC_NONE, wq, 0, 0, 0, 0);

 workq_lock_spin(wq);
 old_pri = new_pri = uth->uu_workq_pri;
 new_pri.qos_override = THREAD_QOS_UNSPECIFIED;
 workq_thread_update_bucket(p, wq, uth, old_pri, new_pri, 0);
 workq_unlock(wq);
 return 0;
}
