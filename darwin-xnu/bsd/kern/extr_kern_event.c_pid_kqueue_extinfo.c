
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint32_t ;
struct kqueue {int dummy; } ;
struct knote {int dummy; } ;
struct kevent_extinfo {int dummy; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; int * fd_knhash; int * fd_knlist; } ;
typedef TYPE_1__* proc_t ;
typedef int int32_t ;
struct TYPE_7__ {struct filedesc* p_fd; } ;


 int ENOMEM ;
 unsigned long PROC_PIDFDKQUEUE_KNOTES_MAX ;
 struct knote* SLIST_FIRST (int *) ;
 int assert (int) ;
 int bzero (struct kevent_extinfo*,unsigned long) ;
 int copyout (struct kevent_extinfo*,int ,int) ;
 struct kevent_extinfo* kalloc (unsigned long) ;
 unsigned long kevent_extinfo_emit (struct kqueue*,struct knote*,struct kevent_extinfo*,unsigned long,unsigned long) ;
 int kfree (struct kevent_extinfo*,unsigned long) ;
 int kqhash_lock (TYPE_1__*) ;
 int kqhash_unlock (TYPE_1__*) ;
 int min (unsigned long,unsigned long) ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;

int
pid_kqueue_extinfo(proc_t p, struct kqueue *kq, user_addr_t ubuf,
  uint32_t bufsize, int32_t *retval)
{
 struct knote *kn;
 int i;
 int err = 0;
 struct filedesc *fdp = p->p_fd;
 unsigned long nknotes = 0;
 unsigned long buflen = bufsize / sizeof(struct kevent_extinfo);
 struct kevent_extinfo *kqext = ((void*)0);


 buflen = min(buflen, PROC_PIDFDKQUEUE_KNOTES_MAX);

 kqext = kalloc(buflen * sizeof(struct kevent_extinfo));
 if (kqext == ((void*)0)) {
  err = ENOMEM;
  goto out;
 }
 bzero(kqext, buflen * sizeof(struct kevent_extinfo));

 proc_fdlock(p);
 for (i = 0; i < fdp->fd_knlistsize; i++) {
  kn = SLIST_FIRST(&fdp->fd_knlist[i]);
  nknotes = kevent_extinfo_emit(kq, kn, kqext, buflen, nknotes);
 }
 proc_fdunlock(p);

 if (fdp->fd_knhashmask != 0) {
  for (i = 0; i < (int)fdp->fd_knhashmask + 1; i++) {
   kqhash_lock(p);
   kn = SLIST_FIRST(&fdp->fd_knhash[i]);
   nknotes = kevent_extinfo_emit(kq, kn, kqext, buflen, nknotes);
   kqhash_unlock(p);
  }
 }

 assert(bufsize >= sizeof(struct kevent_extinfo) * min(buflen, nknotes));
 err = copyout(kqext, ubuf, sizeof(struct kevent_extinfo) * min(buflen, nknotes));

out:
 if (kqext) {
  kfree(kqext, buflen * sizeof(struct kevent_extinfo));
  kqext = ((void*)0);
 }

 if (!err) {
  *retval = min(nknotes, PROC_PIDFDKQUEUE_KNOTES_MAX);
 }
 return err;
}
