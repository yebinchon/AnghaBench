
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; } ;
struct kqtailq {int dummy; } ;
struct knote {int kn_status; int kn_qos_override; int kn_qos_index; int kn_req_index; } ;


 int KN_ACTIVE ;
 int KN_SUPPRESSED ;
 int KQWL_UTQ_RESET_WAKEUP_OVERRIDE ;
 int KQ_WORKLOOP ;
 scalar_t__ TAILQ_EMPTY (struct kqtailq*) ;
 int TAILQ_REMOVE (struct kqtailq*,struct knote*,int ) ;
 int kn_tqe ;
 scalar_t__ knote_enqueue (struct knote*) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int knote_wakeup (struct knote*) ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 int kqlock_held (struct kqueue*) ;
 struct kqtailq* kqueue_get_suppressed_queue (struct kqueue*,struct knote*) ;
 scalar_t__ kqworkloop_is_processing_on_current_thread (struct kqworkloop*) ;
 int kqworkloop_update_threads_qos (struct kqworkloop*,int ,int ) ;

__attribute__((used)) static void
knote_unsuppress(struct knote *kn)
{
 struct kqtailq *suppressq;
 struct kqueue *kq = knote_get_kq(kn);

 kqlock_held(kq);

 if ((kn->kn_status & KN_SUPPRESSED) == 0)
  return;

 kn->kn_status &= ~KN_SUPPRESSED;
 suppressq = kqueue_get_suppressed_queue(kq, kn);
 TAILQ_REMOVE(suppressq, kn, kn_tqe);





 if ((kn->kn_status & KN_ACTIVE) == 0) {
  kn->kn_qos_override = kn->kn_req_index;
 }
 kn->kn_qos_index = kn->kn_qos_override;


 if (knote_enqueue(kn) && (kn->kn_status & KN_ACTIVE)) {
  knote_wakeup(kn);
 }

 if ((kq->kq_state & KQ_WORKLOOP) && TAILQ_EMPTY(suppressq)) {
  struct kqworkloop *kqwl = (struct kqworkloop *)kq;

  if (kqworkloop_is_processing_on_current_thread(kqwl)) {





  } else {
   kq_req_lock(kqwl);
   kqworkloop_update_threads_qos(kqwl, KQWL_UTQ_RESET_WAKEUP_OVERRIDE, 0);
   kq_req_unlock(kqwl);
  }
 }
}
