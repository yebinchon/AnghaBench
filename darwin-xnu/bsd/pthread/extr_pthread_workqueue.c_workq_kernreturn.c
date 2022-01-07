
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int thread_t ;
typedef int thread_qos_t ;
struct workqueue {int wq_event_manager_priority; } ;
struct workq_kernreturn_args {int options; int affinity; int prio; } ;
struct uthread {int uu_workq_flags; } ;
struct proc {int p_lflag; int p_dispatchqueue_serialno_offset; } ;
typedef int pthread_priority_t ;
typedef int int32_t ;


 int EINVAL ;
 int P_LREGISTER ;
 int THREAD_QOS_MIN_TIER_IMPORTANCE ;
 int THREAD_QOS_UNSPECIFIED ;
 int THREAD_TAG_WORKQUEUE ;
 int UT_WORKQ_DYING ;
 int UT_WORKQ_OVERCOMMIT ;







 int _PTHREAD_PRIORITY_FLAGS_MASK ;
 int _PTHREAD_PRIORITY_SCHED_PRI_FLAG ;
 int _PTHREAD_PRIORITY_SCHED_PRI_MASK ;
 int _pthread_priority_relpri (int) ;
 int _pthread_priority_thread_qos (int) ;
 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 struct workqueue* proc_get_wqptr (struct proc*) ;
 int thread_get_tag (int ) ;
 int workq_constrained_allowance (struct workqueue*,int ,struct uthread*,int) ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_reqthreads (struct proc*,int,int) ;
 int workq_thread_return (struct proc*,struct workq_kernreturn_args*,struct workqueue*) ;
 int workq_unlock (struct workqueue*) ;

int
workq_kernreturn(struct proc *p, struct workq_kernreturn_args *uap, int32_t *retval)
{
 int options = uap->options;
 int arg2 = uap->affinity;
 int arg3 = uap->prio;
 struct workqueue *wq = proc_get_wqptr(p);
 int error = 0;

 if ((p->p_lflag & P_LREGISTER) == 0) {
  return EINVAL;
 }

 switch (options) {
 case 134: {




  int offset = arg2;
  if (arg3 & 0x01){

  }

  p->p_dispatchqueue_serialno_offset = (uint64_t)offset;
  break;
 }
 case 133: {




  error = workq_reqthreads(p, arg2, arg3);
  break;
 }
 case 132: {







  pthread_priority_t pri = arg2;

  if (wq == ((void*)0)) {
   error = EINVAL;
   break;
  }




  if (pri & _PTHREAD_PRIORITY_SCHED_PRI_FLAG) {
   pri &= (_PTHREAD_PRIORITY_SCHED_PRI_MASK |
     _PTHREAD_PRIORITY_SCHED_PRI_FLAG);
  } else {
   thread_qos_t qos = _pthread_priority_thread_qos(pri);
   int relpri = _pthread_priority_relpri(pri);
   if (relpri > 0 || relpri < THREAD_QOS_MIN_TIER_IMPORTANCE ||
     qos == THREAD_QOS_UNSPECIFIED) {
    error = EINVAL;
    break;
   }
   pri &= ~_PTHREAD_PRIORITY_FLAGS_MASK;
  }





  workq_lock_spin(wq);
  if (wq->wq_event_manager_priority < (uint32_t)pri) {
   wq->wq_event_manager_priority = (uint32_t)pri;
  }
  workq_unlock(wq);
  break;
 }
 case 130:
 case 128:
 case 129: {
  error = workq_thread_return(p, uap, wq);
  break;
 }

 case 131: {




  thread_t th = current_thread();
  struct uthread *uth = get_bsdthread_info(th);
  if (((thread_get_tag(th) & THREAD_TAG_WORKQUEUE) == 0) ||
    (uth->uu_workq_flags & (UT_WORKQ_DYING|UT_WORKQ_OVERCOMMIT))) {
   error = EINVAL;
   break;
  }

  thread_qos_t qos = _pthread_priority_thread_qos(arg2);
  if (qos == THREAD_QOS_UNSPECIFIED) {
   error = EINVAL;
   break;
  }
  workq_lock_spin(wq);
  bool should_narrow = !workq_constrained_allowance(wq, qos, uth, 0);
  workq_unlock(wq);

  *retval = should_narrow;
  break;
 }
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
