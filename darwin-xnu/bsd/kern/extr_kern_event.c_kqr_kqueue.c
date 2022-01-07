
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kqworkq {struct kqrequest* kqwq_request; } ;
struct kqrequest {int kqr_state; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_8__ {struct kqworkq* kqwq; int kqwl; } ;
typedef TYPE_3__ kqueue_t ;
struct TYPE_7__ {TYPE_1__* p_fd; } ;
struct TYPE_6__ {scalar_t__ fd_wqkqueue; } ;


 int KQR_WORKLOOP ;
 int KQWQ_NBUCKETS ;
 int assert (int) ;
 int kqr_kqworkloop (struct kqrequest*) ;

__attribute__((used)) static inline kqueue_t
kqr_kqueue(proc_t p, struct kqrequest *kqr)
{
 kqueue_t kqu;
 if (kqr->kqr_state & KQR_WORKLOOP) {
  kqu.kqwl = kqr_kqworkloop(kqr);
 } else {
  kqu.kqwq = (struct kqworkq *)p->p_fd->fd_wqkqueue;
  assert(kqr >= kqu.kqwq->kqwq_request &&
    kqr < kqu.kqwq->kqwq_request + KQWQ_NBUCKETS);
 }
 return kqu;
}
