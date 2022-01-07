
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_4__ {int qos_tier; } ;
typedef TYPE_1__ thread_qos_policy_data_t ;
typedef int thread_policy_t ;
struct TYPE_5__ {int timeshare; } ;
typedef TYPE_2__ thread_extended_policy_data_t ;
struct workqueue {int wq_constrained_threads_scheduled; } ;
struct uu_workq_policy {scalar_t__ qos_bucket; int qos_req; } ;
struct uthread {int uu_workq_flags; struct uu_workq_policy uu_workq_pri; struct kqrequest* uu_kqr_bound; } ;
struct kqrequest {int kqr_state; } ;
typedef int pthread_priority_t ;
typedef int proc_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef enum workq_set_self_flags { ____Placeholder_workq_set_self_flags } workq_set_self_flags ;


 int EALREADY ;
 int EBADMSG ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int EPERM ;
 scalar_t__ KERN_SUCCESS ;
 int KQR_WORKLOOP ;
 int THREAD_EXTENDED_POLICY ;
 int THREAD_EXTENDED_POLICY_COUNT ;
 int THREAD_QOS_POLICY ;
 int THREAD_QOS_POLICY_COUNT ;
 int THREAD_TAG_WORKQUEUE ;
 int UT_WORKQ_OVERCOMMIT ;
 int WORKQ_SET_SELF_FIXEDPRIORITY_FLAG ;
 int WORKQ_SET_SELF_QOS_FLAG ;
 int WORKQ_SET_SELF_TIMESHARE_FLAG ;
 int WORKQ_SET_SELF_VOUCHER_FLAG ;
 int WORKQ_SET_SELF_WQ_KEVENT_UNBIND ;
 scalar_t__ WORKQ_THREAD_QOS_MANAGER ;
 int _PTHREAD_PRIORITY_OVERCOMMIT_FLAG ;
 int _pthread_priority_to_policy (int,TYPE_1__*) ;
 struct uthread* get_bsdthread_info (int ) ;
 int kqueue_threadreq_unbind (int ,struct kqrequest*) ;
 struct workqueue* proc_get_wqptr (int ) ;
 int thread_get_tag (int ) ;
 int thread_has_qos_policy (int ) ;
 scalar_t__ thread_policy_set_internal (int ,int ,int ,int ) ;
 scalar_t__ thread_set_voucher_name (int ) ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_thread_update_bucket (int ,struct workqueue*,struct uthread*,struct uu_workq_policy,struct uu_workq_policy,int) ;
 int workq_unlock (struct workqueue*) ;
 scalar_t__ wq_max_constrained_threads ;

__attribute__((used)) static int
bsdthread_set_self(proc_t p, thread_t th, pthread_priority_t priority,
  mach_port_name_t voucher, enum workq_set_self_flags flags)
{
 struct uthread *uth = get_bsdthread_info(th);
 struct workqueue *wq = proc_get_wqptr(p);

 kern_return_t kr;
 int unbind_rv = 0, qos_rv = 0, voucher_rv = 0, fixedpri_rv = 0;
 bool is_wq_thread = (thread_get_tag(th) & THREAD_TAG_WORKQUEUE);

 if (flags & WORKQ_SET_SELF_WQ_KEVENT_UNBIND) {
  if (!is_wq_thread) {
   unbind_rv = EINVAL;
   goto qos;
  }

  if (uth->uu_workq_pri.qos_bucket == WORKQ_THREAD_QOS_MANAGER) {
   unbind_rv = EINVAL;
   goto qos;
  }

  struct kqrequest *kqr = uth->uu_kqr_bound;
  if (kqr == ((void*)0)) {
   unbind_rv = EALREADY;
   goto qos;
  }

  if (kqr->kqr_state & KQR_WORKLOOP) {
   unbind_rv = EINVAL;
   goto qos;
  }

  kqueue_threadreq_unbind(p, uth->uu_kqr_bound);
 }

qos:
 if (flags & WORKQ_SET_SELF_QOS_FLAG) {
  thread_qos_policy_data_t new_policy;

  if (!_pthread_priority_to_policy(priority, &new_policy)) {
   qos_rv = EINVAL;
   goto voucher;
  }

  if (!is_wq_thread) {



   if (!thread_has_qos_policy(th)) {
    qos_rv = EPERM;
    goto voucher;
   }
  } else if (uth->uu_workq_pri.qos_bucket == WORKQ_THREAD_QOS_MANAGER) {



   qos_rv = EINVAL;
   goto voucher;
  } else {




   bool old_overcommit = uth->uu_workq_flags & UT_WORKQ_OVERCOMMIT;
   bool new_overcommit = priority & _PTHREAD_PRIORITY_OVERCOMMIT_FLAG;
   struct uu_workq_policy old_pri, new_pri;
   bool force_run = 0;

   workq_lock_spin(wq);

   if (old_overcommit != new_overcommit) {
    uth->uu_workq_flags ^= UT_WORKQ_OVERCOMMIT;
    if (old_overcommit) {
     wq->wq_constrained_threads_scheduled++;
    } else if (wq->wq_constrained_threads_scheduled-- ==
      wq_max_constrained_threads) {
     force_run = 1;
    }
   }

   old_pri = new_pri = uth->uu_workq_pri;
   new_pri.qos_req = new_policy.qos_tier;
   workq_thread_update_bucket(p, wq, uth, old_pri, new_pri, force_run);
   workq_unlock(wq);
  }

  kr = thread_policy_set_internal(th, THREAD_QOS_POLICY,
    (thread_policy_t)&new_policy, THREAD_QOS_POLICY_COUNT);
  if (kr != KERN_SUCCESS) {
   qos_rv = EINVAL;
  }
 }

voucher:
 if (flags & WORKQ_SET_SELF_VOUCHER_FLAG) {
  kr = thread_set_voucher_name(voucher);
  if (kr != KERN_SUCCESS) {
   voucher_rv = ENOENT;
   goto fixedpri;
  }
 }

fixedpri:
 if (qos_rv) goto done;
 if (flags & WORKQ_SET_SELF_FIXEDPRIORITY_FLAG) {
  thread_extended_policy_data_t extpol = {.timeshare = 0};

  if (is_wq_thread) {

   fixedpri_rv = ENOTSUP;
   goto done;
  }

  kr = thread_policy_set_internal(th, THREAD_EXTENDED_POLICY,
    (thread_policy_t)&extpol, THREAD_EXTENDED_POLICY_COUNT);
  if (kr != KERN_SUCCESS) {
   fixedpri_rv = EINVAL;
   goto done;
  }
 } else if (flags & WORKQ_SET_SELF_TIMESHARE_FLAG) {
  thread_extended_policy_data_t extpol = {.timeshare = 1};

  if (is_wq_thread) {

   fixedpri_rv = ENOTSUP;
   goto done;
  }

  kr = thread_policy_set_internal(th, THREAD_EXTENDED_POLICY,
    (thread_policy_t)&extpol, THREAD_EXTENDED_POLICY_COUNT);
  if (kr != KERN_SUCCESS) {
   fixedpri_rv = EINVAL;
   goto done;
  }
 }

done:
 if (qos_rv && voucher_rv) {

  return EBADMSG;
 }

 if (unbind_rv) {
  return unbind_rv;
 }

 if (qos_rv) {
  return qos_rv;
 }

 if (voucher_rv) {
  return voucher_rv;
 }

 if (fixedpri_rv) {
  return fixedpri_rv;
 }

 return 0;
}
