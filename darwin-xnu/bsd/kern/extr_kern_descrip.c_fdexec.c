
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int thread_t ;
struct uthread {scalar_t__ uu_kqr_bound; } ;
struct kqueue {int dummy; } ;
struct fileproc {scalar_t__ f_iocount; int f_fglob; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; int fd_lastfile; char* fd_ofileflags; int fd_freefile; struct kqueue* fd_wqkqueue; struct fileproc** fd_ofiles; } ;
typedef TYPE_1__* proc_t ;
typedef int boolean_t ;
struct TYPE_10__ {int p_fpdrainwait; int p_fdmlock; struct filedesc* p_fd; } ;


 short POSIX_SPAWN_CLOEXEC_DEFAULT ;
 int PRIBIO ;
 char UF_EXCLOSE ;
 char UF_INHERIT ;
 char UF_RESERVED ;
 int assert (int) ;
 int closef_locked (struct fileproc*,int ,TYPE_1__*) ;
 int current_thread () ;
 int fileproc_free (struct fileproc*) ;
 struct uthread* get_bsdthread_info (int ) ;
 int knotes_dealloc (TYPE_1__*) ;
 int kqueue_dealloc (struct kqueue*) ;
 int kqueue_threadreq_unbind (TYPE_1__*,scalar_t__) ;
 scalar_t__ mac_file_check_inherit (int ,int ) ;
 int msleep (int*,int *,int ,char*,int *) ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;
 int proc_ucred (TYPE_1__*) ;
 int procfdtbl_clearfd (TYPE_1__*,int) ;

void
fdexec(proc_t p, short flags, int self_exec)
{
 struct filedesc *fdp = p->p_fd;
 int i;
 boolean_t cloexec_default = (flags & POSIX_SPAWN_CLOEXEC_DEFAULT) != 0;
 thread_t self = current_thread();
 struct uthread *ut = get_bsdthread_info(self);
 struct kqueue *dealloc_kq = ((void*)0);





 if (ut->uu_kqr_bound && self_exec) {
  kqueue_threadreq_unbind(p, ut->uu_kqr_bound);
 }

 proc_fdlock(p);






 knotes_dealloc(p);
 assert(fdp->fd_knlistsize == -1);
 assert(fdp->fd_knhashmask == 0);

 for (i = fdp->fd_lastfile; i >= 0; i--) {

  struct fileproc *fp = fdp->fd_ofiles[i];
  char *flagp = &fdp->fd_ofileflags[i];

  if (fp && cloexec_default) {






   if ((*flagp & (UF_EXCLOSE|UF_INHERIT)) != UF_INHERIT)
    *flagp |= UF_EXCLOSE;
   *flagp &= ~UF_INHERIT;
  }

  if (
      ((*flagp & (UF_RESERVED|UF_EXCLOSE)) == UF_EXCLOSE)



  ) {
   procfdtbl_clearfd(p, i);
   if (i == fdp->fd_lastfile && i > 0)
    fdp->fd_lastfile--;
   if (i < fdp->fd_freefile)
    fdp->fd_freefile = i;





   while (fp->f_iocount > 0) {
    p->p_fpdrainwait = 1;
    msleep(&p->p_fpdrainwait, &p->p_fdmlock, PRIBIO,
        "fpdrain", ((void*)0));
   }

   closef_locked(fp, fp->f_fglob, p);

   fileproc_free(fp);
  }
 }


 if (fdp->fd_wqkqueue) {
  dealloc_kq = fdp->fd_wqkqueue;
  fdp->fd_wqkqueue = ((void*)0);
 }

 proc_fdunlock(p);


 if (dealloc_kq)
  kqueue_dealloc(dealloc_kq);
}
