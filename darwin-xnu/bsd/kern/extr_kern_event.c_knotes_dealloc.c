
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct kqueue {int dummy; } ;
struct knote {int dummy; } ;
struct klist {int dummy; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; struct klist* fd_knhash; struct klist* fd_knlist; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_7__ {struct filedesc* p_fd; } ;


 int FREE (struct klist*,int ) ;
 int M_KQUEUE ;
 struct knote* SLIST_FIRST (struct klist*) ;
 int knhash_lock (TYPE_1__*) ;
 int knhash_unlock (TYPE_1__*) ;
 int knote_drop (struct kqueue*,struct knote*,int *) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int kqlock (struct kqueue*) ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;

void
knotes_dealloc(proc_t p)
{
 struct filedesc *fdp = p->p_fd;
 struct kqueue *kq;
 struct knote *kn;
 struct klist *kn_hash = ((void*)0);
 int i;


 if (fdp->fd_knlistsize > 0) {
  for (i = 0; i < fdp->fd_knlistsize; i++) {
   while ((kn = SLIST_FIRST(&fdp->fd_knlist[i])) != ((void*)0)) {
    kq = knote_get_kq(kn);
    kqlock(kq);
    proc_fdunlock(p);
    knote_drop(kq, kn, ((void*)0));
    proc_fdlock(p);
   }
  }

  FREE(fdp->fd_knlist, M_KQUEUE);
  fdp->fd_knlist = ((void*)0);
 }
 fdp->fd_knlistsize = -1;

 knhash_lock(p);
 proc_fdunlock(p);


 if (fdp->fd_knhashmask != 0) {
  for (i = 0; i <= (int)fdp->fd_knhashmask; i++) {
   while ((kn = SLIST_FIRST(&fdp->fd_knhash[i])) != ((void*)0)) {
    kq = knote_get_kq(kn);
    kqlock(kq);
    knhash_unlock(p);
    knote_drop(kq, kn, ((void*)0));
    knhash_lock(p);
   }
  }
  kn_hash = fdp->fd_knhash;
  fdp->fd_knhashmask = 0;
  fdp->fd_knhash = ((void*)0);
 }

 knhash_unlock(p);


 if (kn_hash)
  FREE(kn_hash, M_KQUEUE);

 proc_fdlock(p);
}
