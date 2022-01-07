
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wq_thactive_t ;
struct workqueue {scalar_t__ wq_nthreads; scalar_t__ wq_constrained_threads_scheduled; scalar_t__ wq_threads_scheduled; } ;
struct proc_workqueueinfo {scalar_t__ pwq_nthreads; int pwq_runthreads; int pwq_state; scalar_t__ pwq_blockedthreads; } ;
typedef int proc_t ;


 int EBUSY ;
 int EINVAL ;
 int WORKQ_THREAD_QOS_MANAGER ;
 int WORKQ_THREAD_QOS_MIN ;
 int WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT ;
 int WQ_EXCEEDED_TOTAL_THREAD_LIMIT ;
 int _wq_thactive (struct workqueue*) ;
 int _wq_thactive_aggregate_downto_qos (struct workqueue*,int,int ,int *,int *) ;
 int _wq_thactive_offset_for_qos (int ) ;
 struct workqueue* proc_get_wqptr (int ) ;
 int workq_lock_try (struct workqueue*) ;
 int workq_unlock (struct workqueue*) ;
 scalar_t__ wq_max_constrained_threads ;
 scalar_t__ wq_max_threads ;

int
fill_procworkqueue(proc_t p, struct proc_workqueueinfo * pwqinfo)
{
 struct workqueue *wq = proc_get_wqptr(p);
 int error = 0;
 int activecount;

 if (wq == ((void*)0)) {
  return EINVAL;
 }
 bool locked = workq_lock_try(wq);
 if (!locked) {
  return EBUSY;
 }

 wq_thactive_t act = _wq_thactive(wq);
 activecount = _wq_thactive_aggregate_downto_qos(wq, act,
   WORKQ_THREAD_QOS_MIN, ((void*)0), ((void*)0));
 if (act & _wq_thactive_offset_for_qos(WORKQ_THREAD_QOS_MANAGER)) {
  activecount++;
 }
 pwqinfo->pwq_nthreads = wq->wq_nthreads;
 pwqinfo->pwq_runthreads = activecount;
 pwqinfo->pwq_blockedthreads = wq->wq_threads_scheduled - activecount;
 pwqinfo->pwq_state = 0;

 if (wq->wq_constrained_threads_scheduled >= wq_max_constrained_threads) {
  pwqinfo->pwq_state |= WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT;
 }

 if (wq->wq_nthreads >= wq_max_threads) {
  pwqinfo->pwq_state |= WQ_EXCEEDED_TOTAL_THREAD_LIMIT;
 }

 workq_unlock(wq);
 return error;
}
