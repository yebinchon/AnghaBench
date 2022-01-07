
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {int kqwq_kqueue; } ;
struct kqrequest {int kqr_state; } ;
typedef int kq_index_t ;


 int KQR_THREQUESTED ;
 int KQR_WAKEUP ;
 int KQWQ_NBUCKETS ;
 int assert (int) ;
 int kq_req_lock (struct kqworkq*) ;
 int kq_req_unlock (struct kqworkq*) ;
 int kqueue_threadreq_initiate (int *,struct kqrequest*,int ,int ) ;
 struct kqrequest* kqworkq_get_request (struct kqworkq*,int ) ;

__attribute__((used)) static void
kqworkq_request_help(struct kqworkq *kqwq, kq_index_t qos_index)
{
 struct kqrequest *kqr;


 assert(qos_index < KQWQ_NBUCKETS);

 kq_req_lock(kqwq);
 kqr = kqworkq_get_request(kqwq, qos_index);

 if ((kqr->kqr_state & KQR_WAKEUP) == 0) {
  kqr->kqr_state |= KQR_WAKEUP;
  if ((kqr->kqr_state & KQR_THREQUESTED) == 0) {
   kqueue_threadreq_initiate(&kqwq->kqwq_kqueue, kqr, qos_index, 0);
  }
 }
 kq_req_unlock(kqwq);
}
