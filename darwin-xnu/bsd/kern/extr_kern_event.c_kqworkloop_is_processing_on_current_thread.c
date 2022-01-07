
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kqr_thread; } ;
struct kqueue {int kq_state; } ;
struct kqworkloop {TYPE_1__ kqwl_request; struct kqueue kqwl_kqueue; } ;


 int KQ_PROCESSING ;
 scalar_t__ current_thread () ;
 int kqlock_held (struct kqueue*) ;

__attribute__((used)) static inline bool
kqworkloop_is_processing_on_current_thread(struct kqworkloop *kqwl)
{
 struct kqueue *kq = &kqwl->kqwl_kqueue;

 kqlock_held(kq);

 if (kq->kq_state & KQ_PROCESSING) {





  return kqwl->kqwl_request.kqr_thread == current_thread();
 }
 return 0;
}
