
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; } ;
struct knote {int kn_status; scalar_t__ kn_qos_index; scalar_t__ kn_qos_override; scalar_t__ kn_req_index; int kn_qos; } ;
typedef scalar_t__ kq_index_t ;


 int KN_ATTACHING ;
 int KN_QUEUED ;
 int KN_STAYACTIVE ;
 int KN_SUPPRESSED ;
 scalar_t__ KQWL_BUCKET_STAYACTIVE ;
 int KQWL_UTQ_UPDATE_STAYACTIVE_QOS ;
 scalar_t__ KQWQ_QOS_MANAGER ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 scalar_t__ THREAD_QOS_LAST ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 scalar_t__ _pthread_priority_thread_qos (int ) ;
 int assert (int) ;
 int knote_activate (struct knote*) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int kq_req_lock (struct kqueue*) ;
 int kq_req_unlock (struct kqueue*) ;
 int kqlock (struct kqueue*) ;
 int kqunlock (struct kqueue*) ;
 int kqworkloop_update_threads_qos (struct kqworkloop*,int ,scalar_t__) ;

void
knote_markstayactive(struct knote *kn)
{
 struct kqueue *kq = knote_get_kq(kn);
 kq_index_t qos;

 kqlock(kq);
 kn->kn_status |= KN_STAYACTIVE;





 assert(kn->kn_status & KN_ATTACHING);
 assert((kn->kn_status & (KN_QUEUED | KN_SUPPRESSED)) == 0);


 if (kq->kq_state & KQ_WORKQ) {
  qos = KQWQ_QOS_MANAGER;
 } else if (kq->kq_state & KQ_WORKLOOP) {
  struct kqworkloop *kqwl = (struct kqworkloop *)kq;

  qos = _pthread_priority_thread_qos(kn->kn_qos);
  assert(qos && qos < THREAD_QOS_LAST);
  kq_req_lock(kq);
  kqworkloop_update_threads_qos(kqwl, KQWL_UTQ_UPDATE_STAYACTIVE_QOS, qos);
  kq_req_unlock(kq);
  qos = KQWL_BUCKET_STAYACTIVE;
 } else {
  qos = THREAD_QOS_UNSPECIFIED;
 }

 kn->kn_req_index = qos;
 kn->kn_qos_override = qos;
 kn->kn_qos_index = qos;

 knote_activate(kn);
 kqunlock(kq);
}
