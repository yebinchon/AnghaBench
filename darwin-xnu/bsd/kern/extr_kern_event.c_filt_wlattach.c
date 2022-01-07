
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kqrequest {scalar_t__ kqr_qos_index; int kqr_thread; scalar_t__ kqr_dsync_waiters; } ;
struct kqworkloop {int kqwl_dynamicid; struct kqrequest kqwl_request; int kqwl_owner; } ;
struct kqueue {int kq_state; } ;
struct TYPE_2__ {void** ext; } ;
struct knote {int kn_sfflags; int kn_flags; int kn_id; int kn_qos; TYPE_1__ kn_kevent; } ;
struct kevent_internal_s {scalar_t__ ident; scalar_t__ udata; int fflags; void** ext; } ;
typedef int kq_index_t ;


 int EALREADY ;
 int EBUSY ;
 int EINVAL ;
 int ENOTSUP ;
 int ERANGE ;
 int ESTALE ;
 int EV_CLEAR ;
 int EV_DISABLE ;
 int FILTER_ACTIVE ;
 int FILT_WLATTACH ;
 int KQ_WORKLOOP ;
 int NOTE_WL_COMMANDS_MASK ;
 int NOTE_WL_END_OWNERSHIP ;
 int NOTE_WL_IGNORE_ESTALE ;



 int THREAD_QOS_UNSPECIFIED ;
 int _pthread_priority_thread_qos (int ) ;
 int current_thread () ;
 int filt_wlupdate (struct kqworkloop*,struct knote*,struct kevent_internal_s*,int ,int ) ;
 int kevent_register_wait_prepare (struct knote*,struct kevent_internal_s*) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int knote_set_error (struct knote*,int) ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 void* thread_owned_workloops_count (int ) ;
 void* thread_tid (int ) ;

__attribute__((used)) static int
filt_wlattach(struct knote *kn, struct kevent_internal_s *kev)
{
 struct kqueue *kq = knote_get_kq(kn);
 struct kqworkloop *kqwl = (struct kqworkloop *)kq;
 int error = 0;
 kq_index_t qos_index = 0;

 if ((kq->kq_state & KQ_WORKLOOP) == 0) {
  error = ENOTSUP;
  goto out;
 }
 int command = (kn->kn_sfflags & NOTE_WL_COMMANDS_MASK);
 switch (command) {
 case 128:
  if (kn->kn_id != kqwl->kqwl_dynamicid) {
   error = EINVAL;
   goto out;
  }
  qos_index = _pthread_priority_thread_qos(kn->kn_qos);
  if (qos_index == THREAD_QOS_UNSPECIFIED) {
   error = ERANGE;
   goto out;
  }
  if (kqwl->kqwl_request.kqr_qos_index) {




   error = EALREADY;
   goto out;
  }
  break;
 case 130:
 case 129:
  if (kn->kn_id == kqwl->kqwl_dynamicid) {
   error = EINVAL;
   goto out;
  }
  if ((kn->kn_flags & EV_DISABLE) == 0) {
   error = EINVAL;
   goto out;
  }
  if (kn->kn_sfflags & NOTE_WL_END_OWNERSHIP) {
   error = EINVAL;
   goto out;
  }
  break;
 default:
  error = EINVAL;
  goto out;
 }

 error = filt_wlupdate(kqwl, kn, kev, qos_index, FILT_WLATTACH);

out:
 if (error) {

  if (error == ESTALE && (kn->kn_sfflags & NOTE_WL_IGNORE_ESTALE)) {
   error = 0;
  }
  knote_set_error(kn, error);
  return 0;
 }
 if (command == 130) {
  return kevent_register_wait_prepare(kn, kev);
 }

 if (command == 128) {




  kn->kn_flags |= EV_CLEAR;
  return FILTER_ACTIVE;
 }
 return 0;
}
