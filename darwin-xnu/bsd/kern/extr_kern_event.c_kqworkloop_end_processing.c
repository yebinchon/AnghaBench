
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef size_t thread_qos_t ;
struct kqrequest {int kqr_state; int kqr_wakeup_indexes; int kqr_thread; } ;
struct kqueue {int kq_state; } ;
struct kqworkloop {int kqwl_dynamicid; int kqwl_owner; int * kqwl_queue; struct kqrequest kqwl_request; struct kqueue kqwl_kqueue; } ;


 int BSD_KEVENT_KQWL_PROCESS_END ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KDBG_FILTERED (int,int ,int ,int ) ;
 int KEVENT_FLAG_PARKING ;
 int KEV_EVTID (int ) ;
 int KQR_R2K_NOTIF_ARMED ;
 int KQR_WAKEUP ;
 int KQUEUE_CANT_BE_LAST_REF ;
 size_t KQWL_BUCKET_STAYACTIVE ;
 int KQWL_STAYACTIVE_FIRED_BIT ;
 int KQWL_UTQ_PARKING ;
 int KQWL_UTQ_RECOMPUTE_WAKEUP_QOS ;
 int KQWL_UTQ_UPDATE_WAKEUP_QOS ;
 int KQ_PROCESSING ;
 int TAILQ_EMPTY (int *) ;
 size_t THREAD_QOS_UNSPECIFIED ;
 int assert (int) ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 int kqlock_held (struct kqueue*) ;
 int kqueue_release (struct kqworkloop*,int ) ;
 size_t kqworkloop_acknowledge_events (struct kqworkloop*) ;
 size_t kqworkloop_unbind_locked (struct kqworkloop*,int ) ;
 int kqworkloop_update_threads_qos (struct kqworkloop*,int ,size_t) ;
 int thread_drop_ipc_override (int ) ;

__attribute__((used)) static int
kqworkloop_end_processing(struct kqworkloop *kqwl, int flags, int kevent_flags)
{
 struct kqueue *kq = &kqwl->kqwl_kqueue;
 struct kqrequest *kqr = &kqwl->kqwl_request;
 thread_qos_t old_override = THREAD_QOS_UNSPECIFIED, qos_override;
 thread_t thread = kqr->kqr_thread;
 int rc = 0;

 kqlock_held(kq);

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWL_PROCESS_END) | DBG_FUNC_START,
   kqwl->kqwl_dynamicid, 0, 0);

 if (flags & KQ_PROCESSING) {
  assert(kq->kq_state & KQ_PROCESSING);






  if (!TAILQ_EMPTY(&kqwl->kqwl_queue[KQWL_BUCKET_STAYACTIVE])) {
   kq_req_lock(kqwl);
   kqworkloop_update_threads_qos(kqwl, KQWL_UTQ_UPDATE_WAKEUP_QOS,
     KQWL_BUCKET_STAYACTIVE);
   kq_req_unlock(kqwl);
  }
  if (kevent_flags & KEVENT_FLAG_PARKING) {
   qos_override = kqworkloop_acknowledge_events(kqwl);
  }
 }

 kq_req_lock(kqwl);

 if (kevent_flags & KEVENT_FLAG_PARKING) {
  kqworkloop_update_threads_qos(kqwl, KQWL_UTQ_PARKING, qos_override);
  if ((kqr->kqr_state & KQR_WAKEUP) && !kqwl->kqwl_owner) {




   kqr->kqr_wakeup_indexes &= ~KQWL_STAYACTIVE_FIRED_BIT;
   rc = -1;
  } else {
   old_override = kqworkloop_unbind_locked(kqwl, thread);
   (void)kqueue_release(kqwl, KQUEUE_CANT_BE_LAST_REF);
   kq->kq_state &= ~flags;
  }
 } else {
  kq->kq_state &= ~flags;
  kqr->kqr_state |= KQR_R2K_NOTIF_ARMED;
  kqworkloop_update_threads_qos(kqwl, KQWL_UTQ_RECOMPUTE_WAKEUP_QOS, 0);
 }

 kq_req_unlock(kqwl);

 if (old_override) {
  thread_drop_ipc_override(thread);
 }

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWL_PROCESS_END) | DBG_FUNC_END,
   kqwl->kqwl_dynamicid, 0, 0);

 return rc;
}
