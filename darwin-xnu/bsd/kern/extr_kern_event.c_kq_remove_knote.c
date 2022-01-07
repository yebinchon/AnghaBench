
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t u_int ;
struct proc {struct filedesc* p_fd; } ;
struct kqueue {int kq_state; } ;
struct knote_lock_ctx {int dummy; } ;
struct knote {size_t kn_id; } ;
struct klist {int dummy; } ;
struct filedesc {int fd_knhashmask; struct klist* fd_knhash; struct klist* fd_knlist; scalar_t__ fd_knlistsize; } ;
struct TYPE_2__ {int f_isfd; } ;


 int KNOTE_KQ_UNLOCK ;
 size_t KN_HASH (size_t,int ) ;
 int KQ_DYNAMIC ;
 int SLIST_REMOVE (struct klist*,struct knote*,int ,int ) ;
 int assert (int) ;
 int kn_link ;
 int knhash_lock (struct proc*) ;
 int knhash_unlock (struct proc*) ;
 int knote ;
 TYPE_1__* knote_fops (struct knote*) ;
 int knote_unlock_cancel (struct kqueue*,struct knote*,struct knote_lock_ctx*,int ) ;
 int kqlock (struct kqueue*) ;
 int kqueue_release_last (struct proc*,struct kqueue*) ;
 int kqunlock (struct kqueue*) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;

__attribute__((used)) static void
kq_remove_knote(struct kqueue *kq, struct knote *kn, struct proc *p,
  struct knote_lock_ctx *knlc)
{
 struct filedesc *fdp = p->p_fd;
 struct klist *list = ((void*)0);
 uint16_t kq_state;
 bool is_fd;

 is_fd = knote_fops(kn)->f_isfd;

 if (is_fd)
  proc_fdlock(p);
 else
  knhash_lock(p);

 if (is_fd) {
  assert ((u_int)fdp->fd_knlistsize > kn->kn_id);
  list = &fdp->fd_knlist[kn->kn_id];
 } else {
  list = &fdp->fd_knhash[KN_HASH(kn->kn_id, fdp->fd_knhashmask)];
 }
 SLIST_REMOVE(list, kn, knote, kn_link);

 kqlock(kq);
 kq_state = kq->kq_state;
 if (knlc) {
  knote_unlock_cancel(kq, kn, knlc, KNOTE_KQ_UNLOCK);
 } else {
  kqunlock(kq);
 }
 if (is_fd)
  proc_fdunlock(p);
 else
  knhash_unlock(p);

 if (kq_state & KQ_DYNAMIC)
  kqueue_release_last(p, kq);
}
