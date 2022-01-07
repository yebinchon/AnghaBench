
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef scalar_t__ thread_qos_t ;
struct kqueue {int kq_state; } ;
struct kqrequest {scalar_t__ kqr_thread; int kqr_state; int kqr_wakeup_indexes; int kqr_suppressed; } ;
struct kqworkloop {int kqwl_dynamicid; scalar_t__ kqwl_owner; int * kqwl_queue; struct kqueue kqwl_kqueue; struct kqrequest kqwl_request; } ;


 int BSD_KEVENT_KQWL_PROCESS_BEGIN ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KDBG_FILTERED (int,int ,int ,int ) ;
 unsigned int KEVENT_FLAG_PARKING ;
 int KEV_EVTID (int ) ;
 int KQR_THOVERCOMMIT ;
 int KQR_WAKEUP ;
 int KQUEUE_CANT_BE_LAST_REF ;
 size_t KQWL_BUCKET_STAYACTIVE ;
 int KQWL_STAYACTIVE_FIRED_BIT ;
 int KQWL_UTQ_NONE ;
 int KQWL_UTQ_PARKING ;
 int KQWL_UTQ_RESET_WAKEUP_OVERRIDE ;
 int KQWL_UTQ_UNBINDING ;
 int KQ_PROCESSING ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int assert (int) ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 int kqlock_held (struct kqueue*) ;
 int kqueue_release (struct kqworkloop*,int ) ;
 scalar_t__ kqworkloop_acknowledge_events (struct kqworkloop*) ;
 scalar_t__ kqworkloop_unbind_locked (struct kqworkloop*,scalar_t__) ;
 int kqworkloop_update_threads_qos (struct kqworkloop*,int,scalar_t__) ;
 int thread_drop_ipc_override (scalar_t__) ;

__attribute__((used)) static int
kqworkloop_begin_processing(struct kqworkloop *kqwl, unsigned int kevent_flags)
{
 struct kqrequest *kqr = &kqwl->kqwl_request;
 struct kqueue *kq = &kqwl->kqwl_kqueue;
 thread_qos_t old_override = THREAD_QOS_UNSPECIFIED, qos_override;
 thread_t thread = kqr->kqr_thread;
 int rc = 0, op = KQWL_UTQ_NONE;

 kqlock_held(kq);

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWL_PROCESS_BEGIN) | DBG_FUNC_START,
               kqwl->kqwl_dynamicid, 0, 0);


 assert((kq->kq_state & KQ_PROCESSING) == 0);

 kq->kq_state |= KQ_PROCESSING;

 if (!TAILQ_EMPTY(&kqr->kqr_suppressed)) {
  op = KQWL_UTQ_RESET_WAKEUP_OVERRIDE;
 }

 if (kevent_flags & KEVENT_FLAG_PARKING) {
  if (kqr->kqr_state & KQR_THOVERCOMMIT) {
   op = KQWL_UTQ_PARKING;
  } else {
   op = KQWL_UTQ_UNBINDING;
  }
 }
 if (op == KQWL_UTQ_NONE) {
  goto done;
 }

 qos_override = kqworkloop_acknowledge_events(kqwl);

 kq_req_lock(kqwl);

 if (op == KQWL_UTQ_UNBINDING) {
  old_override = kqworkloop_unbind_locked(kqwl, thread);
  (void)kqueue_release(kqwl, KQUEUE_CANT_BE_LAST_REF);
 }
 kqworkloop_update_threads_qos(kqwl, op, qos_override);
 if (op == KQWL_UTQ_PARKING) {
  if (!TAILQ_EMPTY(&kqwl->kqwl_queue[KQWL_BUCKET_STAYACTIVE])) {





  } else if ((kqr->kqr_state & KQR_WAKEUP) == 0 || kqwl->kqwl_owner) {
   old_override = kqworkloop_unbind_locked(kqwl, thread);
   (void)kqueue_release(kqwl, KQUEUE_CANT_BE_LAST_REF);
   rc = -1;
  }
 } else if (op == KQWL_UTQ_UNBINDING) {
  if (kqr->kqr_thread == thread) {




  } else {
   rc = -1;
  }
 }

 if (rc == 0) {




  kqr->kqr_wakeup_indexes &= ~KQWL_STAYACTIVE_FIRED_BIT;
 } else {
  kq->kq_state &= ~KQ_PROCESSING;
 }

 kq_req_unlock(kqwl);

 if (old_override) {
  thread_drop_ipc_override(thread);
 }

done:
 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWL_PROCESS_BEGIN) | DBG_FUNC_END,
               kqwl->kqwl_dynamicid, 0, 0);

 return rc;
}
