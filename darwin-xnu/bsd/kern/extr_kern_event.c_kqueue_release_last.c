
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct proc {int dummy; } ;
struct kqueue {int kq_state; } ;
struct TYPE_3__ {int kqwl; struct kqueue* kq; } ;
typedef TYPE_1__ kqueue_t ;


 int KQUEUE_MIGHT_BE_LAST_REF ;
 int KQ_DYNAMIC ;
 int kqhash_lock (struct proc*) ;
 int kqhash_unlock (struct proc*) ;
 int kqueue_dealloc (struct kqueue*) ;
 int kqueue_hash_remove (struct proc*,struct kqueue*) ;
 scalar_t__ kqueue_release (struct kqueue*,int ) ;
 scalar_t__ kqworkloop_invalidate (int ) ;
 int thread_deallocate (scalar_t__) ;

__attribute__((used)) static inline void
kqueue_release_last(struct proc *p, kqueue_t kqu)
{
 struct kqueue *kq = kqu.kq;
 if (kq->kq_state & KQ_DYNAMIC) {
  kqhash_lock(p);
  if (kqueue_release(kq, KQUEUE_MIGHT_BE_LAST_REF)) {
   thread_t cur_owner = kqworkloop_invalidate(kqu.kqwl);
   kqueue_hash_remove(p, kq);
   kqhash_unlock(p);
   if (cur_owner) thread_deallocate(cur_owner);
   kqueue_dealloc(kq);
  } else {
   kqhash_unlock(p);
  }
 }
}
