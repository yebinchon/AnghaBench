
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* kq; } ;
typedef TYPE_2__ kqueue_t ;
struct TYPE_4__ {int kq_state; int kq_reqlock; } ;


 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 int assert (int) ;
 int lck_spin_lock (int *) ;

__attribute__((used)) static inline void
kq_req_lock(kqueue_t kqu)
{
 assert(kqu.kq->kq_state & (KQ_WORKLOOP | KQ_WORKQ));
 lck_spin_lock(&kqu.kq->kq_reqlock);
}
