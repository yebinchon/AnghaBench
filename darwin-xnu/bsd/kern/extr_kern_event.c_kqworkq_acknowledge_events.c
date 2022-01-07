
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef scalar_t__ thread_qos_t ;
struct uthread {struct kqrequest* uu_kqr_bound; } ;
struct kqworkq {int kqwq_kqueue; } ;
struct kqrequest {scalar_t__ kqr_thread; int kqr_state; int kqr_qos_index; int kqr_suppressed; } ;
struct knote {int kn_status; } ;


 int KEVENT_FLAG_PARKING ;
 int KN_STAYACTIVE ;
 int KN_SUPPRESSED ;
 int KQR_THREQUESTED ;
 int KQR_WAKEUP ;
 int KQWQAE_BEGIN_PROCESSING ;
 int KQWQAE_UNBIND ;
 int TAILQ_EMPTY (int *) ;
 struct knote* TAILQ_FIRST (int *) ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int assert (int) ;
 scalar_t__ current_thread () ;
 struct uthread* get_bsdthread_info (scalar_t__) ;
 int knote_unsuppress (struct knote*) ;
 int kq_req_lock (struct kqworkq*) ;
 int kq_req_unlock (struct kqworkq*) ;
 int kqlock_held (int *) ;
 int kqueue_threadreq_initiate (int *,struct kqrequest*,int ,int ) ;
 scalar_t__ kqworkq_unbind_locked (struct kqworkq*,struct kqrequest*,scalar_t__) ;
 int thread_drop_ipc_override (scalar_t__) ;

__attribute__((used)) static int
kqworkq_acknowledge_events(struct kqworkq *kqwq, struct kqrequest *kqr,
  int kevent_flags, int kqwqae_op)
{
 thread_qos_t old_override = THREAD_QOS_UNSPECIFIED;
 thread_t thread = kqr->kqr_thread;
 struct knote *kn;
 int rc = 0;
 bool seen_stayactive = 0, unbind;

 kqlock_held(&kqwq->kqwq_kqueue);

 if (!TAILQ_EMPTY(&kqr->kqr_suppressed)) {







  while ((kn = TAILQ_FIRST(&kqr->kqr_suppressed)) != ((void*)0)) {
   assert(kn->kn_status & KN_SUPPRESSED);
   knote_unsuppress(kn);
   if (kn->kn_status & KN_STAYACTIVE) {
    seen_stayactive = 1;
   }
  }
 }

 kq_req_lock(kqwq);
 if (kqwqae_op == KQWQAE_UNBIND) {
  unbind = 1;
 } else if ((kevent_flags & KEVENT_FLAG_PARKING) == 0) {
  unbind = 0;
 } else if (kqwqae_op == KQWQAE_BEGIN_PROCESSING && seen_stayactive) {





  unbind = 0;
 } else {
  unbind = ((kqr->kqr_state & KQR_WAKEUP) == 0);
 }
 if (unbind) {
  old_override = kqworkq_unbind_locked(kqwq, kqr, thread);
  rc = -1;




  if (kqr->kqr_state & KQR_WAKEUP) {
   kqueue_threadreq_initiate(&kqwq->kqwq_kqueue, kqr,
     kqr->kqr_qos_index, 0);
  }
 }

 if (rc == 0) {





  kqr->kqr_state &= ~KQR_WAKEUP;
 }

 kq_req_unlock(kqwq);

 if (old_override) {
  thread_drop_ipc_override(thread);
 }

 return rc;
}
