
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int dummy; } ;
struct kqueue {struct proc* kq_p; } ;
struct knote_lock_ctx {int dummy; } ;
struct knote {int kn_status; int kn_fp; int kn_id; } ;
struct TYPE_2__ {scalar_t__ f_isfd; int (* f_detach ) (struct knote*) ;} ;


 int KN_ATTACHED ;
 int KN_DROPPING ;
 int KN_LOCKED ;
 int KN_VANISHED ;
 int assert (int) ;
 int fp_drop (struct proc*,int ,int ,int ) ;
 int knote_dequeue (struct knote*) ;
 TYPE_1__* knote_fops (struct knote*) ;
 int knote_free (struct knote*) ;
 int knote_unsuppress (struct knote*) ;
 int knote_wait_for_filter_events (struct kqueue*,struct knote*) ;
 int kq_remove_knote (struct kqueue*,struct knote*,struct proc*,struct knote_lock_ctx*) ;
 int kqlock_held (struct kqueue*) ;
 int stub1 (struct knote*) ;

__attribute__((used)) static void
knote_drop(struct kqueue *kq, struct knote *kn, struct knote_lock_ctx *knlc)
{
 struct proc *p = kq->kq_p;

 kqlock_held(kq);

 assert((kn->kn_status & KN_DROPPING) == 0);
 if (knlc == ((void*)0)) {
  assert((kn->kn_status & KN_LOCKED) == 0);
 }
 kn->kn_status |= KN_DROPPING;

 knote_unsuppress(kn);
 knote_dequeue(kn);
 knote_wait_for_filter_events(kq, kn);


 if (kn->kn_status & KN_ATTACHED) {
  knote_fops(kn)->f_detach(kn);
 }


 kq_remove_knote(kq, kn, p, knlc);
 if (knote_fops(kn)->f_isfd && ((kn->kn_status & KN_VANISHED) == 0))
  fp_drop(p, kn->kn_id, kn->kn_fp, 0);

 knote_free(kn);
}
