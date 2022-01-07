
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int kq_state; } ;
struct knote {int kn_status; } ;


 int KN_DISABLED ;
 int KN_SUPPRESSED ;
 int KQ_PROCESSING ;
 scalar_t__ knote_enqueue (struct knote*) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int knote_unsuppress (struct knote*) ;
 int knote_wakeup (struct knote*) ;

__attribute__((used)) static void
knote_enable(struct knote *kn)
{
 if ((kn->kn_status & KN_DISABLED) == 0)
  return;

 kn->kn_status &= ~KN_DISABLED;

 if (kn->kn_status & KN_SUPPRESSED) {
  struct kqueue *kq = knote_get_kq(kn);
  if ((kq->kq_state & KQ_PROCESSING) == 0) {
   knote_unsuppress(kn);
  }
 } else if (knote_enqueue(kn)) {
  knote_wakeup(kn);
 }
}
