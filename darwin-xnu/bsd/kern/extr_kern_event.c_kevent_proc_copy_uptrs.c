
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; scalar_t__ fd_kqhashmask; int * fd_kqhash; int * fd_knhash; int * fd_knlist; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_9__ {struct filedesc* p_fd; } ;


 int assert (int ) ;
 unsigned int klist_copy_udata (int *,int *,unsigned long,unsigned int) ;
 int knhash_lock (TYPE_1__*) ;
 int knhash_unlock (TYPE_1__*) ;
 int kqhash_lock (TYPE_1__*) ;
 int kqhash_unlock (TYPE_1__*) ;
 unsigned int kqlist_copy_dynamicids (TYPE_1__*,int *,int *,unsigned long,unsigned int) ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;

int
kevent_proc_copy_uptrs(void *proc, uint64_t *buf, int bufsize)
{
 proc_t p = (proc_t)proc;
 struct filedesc *fdp = p->p_fd;
 unsigned int nuptrs = 0;
 unsigned long buflen = bufsize / sizeof(uint64_t);

 if (buflen > 0) {
  assert(buf != ((void*)0));
 }

 proc_fdlock(p);
 for (int i = 0; i < fdp->fd_knlistsize; i++) {
  nuptrs = klist_copy_udata(&fdp->fd_knlist[i], buf, buflen, nuptrs);
 }
 knhash_lock(p);
 proc_fdunlock(p);
 if (fdp->fd_knhashmask != 0) {
  for (int i = 0; i < (int)fdp->fd_knhashmask + 1; i++) {
   nuptrs = klist_copy_udata(&fdp->fd_knhash[i], buf, buflen, nuptrs);
  }
 }
 knhash_unlock(p);

 kqhash_lock(p);
 if (fdp->fd_kqhashmask != 0) {
  for (int i = 0; i < (int)fdp->fd_kqhashmask + 1; i++) {
   nuptrs = kqlist_copy_dynamicids(p, &fdp->fd_kqhash[i], buf, buflen,
     nuptrs);
  }
 }
 kqhash_unlock(p);

 return (int)nuptrs;
}
