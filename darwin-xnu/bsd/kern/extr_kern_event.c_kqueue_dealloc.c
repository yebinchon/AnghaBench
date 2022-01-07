
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct turnstile {int dummy; } ;
struct proc {struct filedesc* p_fd; } ;
struct TYPE_2__ {int kqr_state; } ;
struct kqworkq {scalar_t__ kqwl_retains; int kqwl_statelock; int * kqwl_turnstile; TYPE_1__ kqwl_request; } ;
struct kqworkloop {scalar_t__ kqwl_retains; int kqwl_statelock; int * kqwl_turnstile; TYPE_1__ kqwl_request; } ;
struct kqueue {int kq_state; int kq_reqlock; int kq_lock; int kq_wqs; struct proc* kq_p; } ;
struct kqfile {scalar_t__ kqwl_retains; int kqwl_statelock; int * kqwl_turnstile; TYPE_1__ kqwl_request; } ;
struct knote {int dummy; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; int * fd_knhash; int * fd_knlist; } ;


 int KNOTE_KQ_LOCK_ON_SUCCESS ;
 int KNOTE_LOCK_CTX (int ) ;
 int KQR_ALLOCATED_TURNSTILE ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 struct knote* SLIST_FIRST (int *) ;
 struct knote* SLIST_NEXT (struct knote*,int ) ;
 int assert (int) ;
 int kn_link ;
 int knhash_lock (struct proc*) ;
 int knhash_unlock (struct proc*) ;
 int knlc ;
 int knote_drop (struct kqueue*,struct knote*,int *) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 scalar_t__ knote_lock (struct kqueue*,struct knote*,int *,int ) ;
 int kq_lck_grp ;
 int kqfile_zone ;
 int kqlock (struct kqueue*) ;
 scalar_t__ kqworkloop_invalidate (struct kqworkq*) ;
 int kqworkloop_zone ;
 int kqworkq_zone ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_spin_destroy (int *,int ) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int thread_deallocate (scalar_t__) ;
 int turnstile_cleanup () ;
 int turnstile_complete (uintptr_t,int **,struct turnstile**) ;
 int turnstile_deallocate (struct turnstile*) ;
 int waitq_set_deinit (int *) ;
 int zfree (int ,struct kqworkq*) ;

void
kqueue_dealloc(struct kqueue *kq)
{
 struct proc *p;
 struct filedesc *fdp;
 struct knote *kn;
 int i;

 if (kq == ((void*)0))
  return;

 p = kq->kq_p;
 fdp = p->p_fd;





 if ((kq->kq_state & KQ_WORKLOOP) == 0) {
  KNOTE_LOCK_CTX(knlc);

  proc_fdlock(p);
  for (i = 0; i < fdp->fd_knlistsize; i++) {
   kn = SLIST_FIRST(&fdp->fd_knlist[i]);
   while (kn != ((void*)0)) {
    if (kq == knote_get_kq(kn)) {
     kqlock(kq);
     proc_fdunlock(p);
     if (knote_lock(kq, kn, &knlc, KNOTE_KQ_LOCK_ON_SUCCESS)) {
      knote_drop(kq, kn, &knlc);
     }
     proc_fdlock(p);

     kn = SLIST_FIRST(&fdp->fd_knlist[i]);
     continue;
    }
    kn = SLIST_NEXT(kn, kn_link);
   }
  }

  knhash_lock(p);
  proc_fdunlock(p);

  if (fdp->fd_knhashmask != 0) {
   for (i = 0; i < (int)fdp->fd_knhashmask + 1; i++) {
    kn = SLIST_FIRST(&fdp->fd_knhash[i]);
    while (kn != ((void*)0)) {
     if (kq == knote_get_kq(kn)) {
      kqlock(kq);
      knhash_unlock(p);
      if (knote_lock(kq, kn, &knlc, KNOTE_KQ_LOCK_ON_SUCCESS)) {
       knote_drop(kq, kn, &knlc);
      }
      knhash_lock(p);

      kn = SLIST_FIRST(&fdp->fd_knhash[i]);
      continue;
     }
     kn = SLIST_NEXT(kn, kn_link);
    }
   }
  }
  knhash_unlock(p);
 }

 if (kq->kq_state & KQ_WORKLOOP) {
  struct kqworkloop *kqwl = (struct kqworkloop *)kq;
  thread_t cur_owner = kqworkloop_invalidate(kqwl);

  if (cur_owner) thread_deallocate(cur_owner);

  if (kqwl->kqwl_request.kqr_state & KQR_ALLOCATED_TURNSTILE) {
   struct turnstile *ts;
   turnstile_complete((uintptr_t)kqwl, &kqwl->kqwl_turnstile, &ts);
   turnstile_cleanup();
   turnstile_deallocate(ts);
  } else {
   assert(kqwl->kqwl_turnstile == ((void*)0));
  }
 }





 waitq_set_deinit(&kq->kq_wqs);
 lck_spin_destroy(&kq->kq_lock, kq_lck_grp);
 lck_spin_destroy(&kq->kq_reqlock, kq_lck_grp);

 if (kq->kq_state & KQ_WORKQ) {
  zfree(kqworkq_zone, (struct kqworkq *)kq);
 } else if (kq->kq_state & KQ_WORKLOOP) {
  struct kqworkloop *kqwl = (struct kqworkloop *)kq;

  assert(kqwl->kqwl_retains == 0);
  lck_mtx_destroy(&kqwl->kqwl_statelock, kq_lck_grp);
  zfree(kqworkloop_zone, kqwl);
 } else {
  zfree(kqfile_zone, (struct kqfile *)kq);
 }
}
