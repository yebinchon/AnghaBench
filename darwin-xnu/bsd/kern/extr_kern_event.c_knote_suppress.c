
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int dummy; } ;
struct kqtailq {int dummy; } ;
struct knote {int kn_status; } ;


 int KN_SUPPRESSED ;
 int TAILQ_INSERT_TAIL (struct kqtailq*,struct knote*,int ) ;
 int kn_tqe ;
 int knote_dequeue (struct knote*) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int kqlock_held (struct kqueue*) ;
 struct kqtailq* kqueue_get_suppressed_queue (struct kqueue*,struct knote*) ;

__attribute__((used)) static void
knote_suppress(struct knote *kn)
{
 struct kqtailq *suppressq;
 struct kqueue *kq = knote_get_kq(kn);

 kqlock_held(kq);

 if (kn->kn_status & KN_SUPPRESSED)
  return;

 knote_dequeue(kn);
 kn->kn_status |= KN_SUPPRESSED;
 suppressq = kqueue_get_suppressed_queue(kq, kn);
 TAILQ_INSERT_TAIL(suppressq, kn, kn_tqe);
}
