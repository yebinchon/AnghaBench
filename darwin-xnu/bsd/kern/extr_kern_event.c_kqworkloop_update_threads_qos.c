
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * thread_t ;
struct uthread {int uu_kqueue_override; } ;
struct kqueue {int dummy; } ;
struct kqrequest {int kqr_wakeup_indexes; int kqr_stayactive_qos; int kqr_state; int kqr_override_index; int kqr_qos_index; int * kqr_thread; int kqr_suppressed; } ;
struct kqworkloop {int kqwl_dynamicid; int * kqwl_owner; int * kqwl_queue; struct kqueue kqwl_kqueue; struct kqrequest kqwl_request; } ;
typedef int kq_index_t ;
typedef scalar_t__ boolean_t ;


 int BSD_KEVENT_KQWL_THADJUST ;
 scalar_t__ FALSE ;
 int KDBG_FILTERED (int ,int ,int ,int,int) ;
 int KEV_EVTID (int ) ;
 int KQR_THREQUESTED ;
 int KQR_WAKEUP ;
 int KQWL_BUCKET_STAYACTIVE ;
 int KQWL_STAYACTIVE_FIRED_BIT ;
 int TAILQ_EMPTY (int *) ;
 int THREAD_QOS_UNSPECIFIED ;
 scalar_t__ TRUE ;
 int WORKQ_THREADREQ_ATTEMPT_REBIND ;
 int assert (int) ;
 int fls (int) ;
 struct uthread* get_bsdthread_info (int *) ;
 int kq_req_held (struct kqworkloop*) ;
 int kqlock_held (struct kqworkloop*) ;
 int kqueue_threadreq_initiate (struct kqueue*,struct kqrequest*,int,int) ;
 int kqueue_threadreq_modify (struct kqueue*,struct kqrequest*,int) ;
 int kqworkloop_owner_override (struct kqworkloop*) ;
 int kqworkloop_request_fire_r2k_notification (struct kqworkloop*) ;
 int panic (char*,int) ;
 int thread_add_ipc_override (int *,int) ;
 int thread_drop_ipc_override (int *) ;
 int thread_tid (int *) ;
 int thread_update_ipc_override (int *,int) ;

__attribute__((used)) static void
kqworkloop_update_threads_qos(struct kqworkloop *kqwl, int op, kq_index_t qos)
{
 struct kqrequest *kqr = &kqwl->kqwl_request;
 struct kqueue *kq = &kqwl->kqwl_kqueue;
 kq_index_t old_owner_override = kqworkloop_owner_override(kqwl);
 kq_index_t i;


 kq_req_held(kqwl);

 switch (op) {
 case 128:
  if (qos == KQWL_BUCKET_STAYACTIVE) {
   kqr->kqr_wakeup_indexes |= KQWL_STAYACTIVE_FIRED_BIT;
   qos = kqr->kqr_stayactive_qos;
   assert(qos);
  }
  if (kqr->kqr_wakeup_indexes & (1 << qos)) {
   assert(kqr->kqr_state & KQR_WAKEUP);
   break;
  }

  kqr->kqr_wakeup_indexes |= (1 << qos);
  kqr->kqr_state |= KQR_WAKEUP;
  kqworkloop_request_fire_r2k_notification(kqwl);
  goto recompute;

 case 130:
  assert(qos);
  if (kqr->kqr_stayactive_qos < qos) {
   kqr->kqr_stayactive_qos = qos;
   if (kqr->kqr_wakeup_indexes & KQWL_STAYACTIVE_FIRED_BIT) {
    assert(kqr->kqr_state & KQR_WAKEUP);
    kqr->kqr_wakeup_indexes |= (1 << qos);
    goto recompute;
   }
  }
  break;

 case 136:
 case 131:
  kqr->kqr_override_index = qos;

 case 135:
  if (op == 135) {
   assert(qos == THREAD_QOS_UNSPECIFIED);
  }
  kqlock_held(kqwl);
  i = KQWL_BUCKET_STAYACTIVE;
  if (TAILQ_EMPTY(&kqr->kqr_suppressed)) {
   kqr->kqr_override_index = THREAD_QOS_UNSPECIFIED;
  }
  if (!TAILQ_EMPTY(&kqwl->kqwl_queue[i]) &&
    (kqr->kqr_wakeup_indexes & KQWL_STAYACTIVE_FIRED_BIT)) {






   kqr->kqr_wakeup_indexes &= KQWL_STAYACTIVE_FIRED_BIT;
   kqr->kqr_wakeup_indexes |= (1 << kqr->kqr_stayactive_qos);
  } else {
   kqr->kqr_wakeup_indexes = 0;
  }
  for (i = THREAD_QOS_UNSPECIFIED + 1; i < KQWL_BUCKET_STAYACTIVE; i++) {
   if (!TAILQ_EMPTY(&kqwl->kqwl_queue[i])) {
    kqr->kqr_wakeup_indexes |= (1 << i);
   }
  }
  if (kqr->kqr_wakeup_indexes) {
   kqr->kqr_state |= KQR_WAKEUP;
   kqworkloop_request_fire_r2k_notification(kqwl);
  } else {
   kqr->kqr_state &= ~KQR_WAKEUP;
  }
  goto recompute;

 case 133:
  kqr->kqr_override_index = qos;
  goto recompute;

 case 129:
 recompute:
  if (kqr->kqr_wakeup_indexes > (1 << qos)) {
   qos = fls(kqr->kqr_wakeup_indexes) - 1;
  }
  if (kqr->kqr_override_index < qos) {
   kqr->kqr_override_index = qos;
  }
  break;

 case 134:
  break;

 case 132:
  kqr->kqr_qos_index = qos;
  break;

 default:
  panic("unknown kqwl thread qos update operation: %d", op);
 }

 thread_t kqwl_owner = kqwl->kqwl_owner;
 thread_t servicer = kqr->kqr_thread;
 boolean_t qos_changed = FALSE;
 kq_index_t new_owner_override = kqworkloop_owner_override(kqwl);




 if (kqwl_owner) {






  if (new_owner_override == old_owner_override) {

  } else if (old_owner_override == THREAD_QOS_UNSPECIFIED) {
   thread_add_ipc_override(kqwl_owner, new_owner_override);
  } else if (new_owner_override == THREAD_QOS_UNSPECIFIED) {
   thread_drop_ipc_override(kqwl_owner);
  } else {
   thread_update_ipc_override(kqwl_owner, new_owner_override);
  }
 }




 if ((kqr->kqr_state & KQR_THREQUESTED) == 0) {
  if (kqwl_owner == ((void*)0) && (kqr->kqr_state & KQR_WAKEUP)) {
   int initiate_flags = 0;
   if (op == 131) {
    initiate_flags = WORKQ_THREADREQ_ATTEMPT_REBIND;
   }
   kqueue_threadreq_initiate(kq, kqr, new_owner_override,
     initiate_flags);
  }
 } else if (servicer) {





  struct uthread *ut = get_bsdthread_info(servicer);
  if (ut->uu_kqueue_override != kqr->kqr_override_index) {
   if (ut->uu_kqueue_override == THREAD_QOS_UNSPECIFIED) {
    thread_add_ipc_override(servicer, kqr->kqr_override_index);
   } else if (kqr->kqr_override_index == THREAD_QOS_UNSPECIFIED) {
    thread_drop_ipc_override(servicer);
   } else {
    thread_update_ipc_override(servicer, kqr->kqr_override_index);
   }
   ut->uu_kqueue_override = kqr->kqr_override_index;
   qos_changed = TRUE;
  }
 } else if (new_owner_override == THREAD_QOS_UNSPECIFIED) {







 } else if (old_owner_override != new_owner_override) {





  kqueue_threadreq_modify(kq, kqr, new_owner_override);
  qos_changed = TRUE;
 }

 if (qos_changed) {
  KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWL_THADJUST), kqwl->kqwl_dynamicid,
    thread_tid(kqr->kqr_thread), kqr->kqr_qos_index,
    (kqr->kqr_override_index << 16) | kqr->kqr_state);
 }
}
