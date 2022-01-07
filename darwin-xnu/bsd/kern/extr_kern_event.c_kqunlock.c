
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* kq; } ;
typedef TYPE_2__ kqueue_t ;
struct TYPE_4__ {int kq_lock; } ;


 int lck_spin_unlock (int *) ;

__attribute__((used)) static inline void
kqunlock(kqueue_t kqu)
{
 lck_spin_unlock(&kqu.kq->kq_lock);
}
