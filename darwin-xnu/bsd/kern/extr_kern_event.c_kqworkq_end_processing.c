
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {int kqwq_kqueue; } ;
struct kqrequest {int kqr_state; int kqr_qos_index; } ;


 int KEVENT_FLAG_PARKING ;
 int KQR_WAKEUP ;
 int KQWQAE_END_PROCESSING ;
 int kq_req_lock (struct kqworkq*) ;
 int kq_req_unlock (struct kqworkq*) ;
 int kqueue_queue_empty (int *,int ) ;
 int kqworkq_acknowledge_events (struct kqworkq*,struct kqrequest*,int,int ) ;

__attribute__((used)) static int
kqworkq_end_processing(struct kqworkq *kqwq, struct kqrequest *kqr,
  int kevent_flags)
{
 if (!kqueue_queue_empty(&kqwq->kqwq_kqueue, kqr->kqr_qos_index)) {

  kq_req_lock(kqwq);
  kqr->kqr_state |= KQR_WAKEUP;
  kq_req_unlock(kqwq);
 }

 if (kevent_flags & KEVENT_FLAG_PARKING) {




  int rc = kqworkq_acknowledge_events(kqwq, kqr, kevent_flags,
    KQWQAE_END_PROCESSING);
  if (rc == 0) {
   return -1;
  }
 }

 return 0;
}
