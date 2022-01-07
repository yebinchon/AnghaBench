
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct waitq {int dummy; } ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
struct fileproc {int f_flags; scalar_t__ f_wset; TYPE_2__* f_fglob; scalar_t__ f_iocount; } ;
typedef TYPE_3__* proc_t ;
struct TYPE_8__ {int p_fpdrainwait; int p_fdmlock; } ;
struct TYPE_7__ {TYPE_1__* fg_ops; int fg_cred; } ;
struct TYPE_6__ {int (* fo_drain ) (struct fileproc*,struct vfs_context*) ;} ;


 int FP_INSELECT ;
 int FP_SELCONFLICT ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 int NO_EVENT64 ;
 int PRIBIO ;
 int THREAD_INTERRUPTED ;
 int WAITQ_ALL_PRIORITIES ;
 int lck_mtx_convert_spin (int *) ;
 int msleep (int*,int *,int ,char*,int *) ;
 int panic (char*,...) ;
 int proc_thread (TYPE_3__*) ;
 struct waitq select_conflict_queue ;
 int stub1 (struct fileproc*,struct vfs_context*) ;
 scalar_t__ waitq_wakeup64_all (struct waitq*,int ,int ,int ) ;

void
fileproc_drain(proc_t p, struct fileproc * fp)
{
 struct vfs_context context;

 context.vc_thread = proc_thread(p);
 context.vc_ucred = fp->f_fglob->fg_cred;

 fp->f_iocount-- ;

 while (fp->f_iocount) {

         lck_mtx_convert_spin(&p->p_fdmlock);

  if (fp->f_fglob->fg_ops->fo_drain) {
   (*fp->f_fglob->fg_ops->fo_drain)(fp, &context);
  }
  if ((fp->f_flags & FP_INSELECT) == FP_INSELECT) {
   if (waitq_wakeup64_all((struct waitq *)fp->f_wset, NO_EVENT64,
            THREAD_INTERRUPTED, WAITQ_ALL_PRIORITIES) == KERN_INVALID_ARGUMENT)
    panic("bad wait queue for waitq_wakeup64_all %p (fp:%p)", fp->f_wset, fp);
  }
  if ((fp->f_flags & FP_SELCONFLICT) == FP_SELCONFLICT) {
   if (waitq_wakeup64_all(&select_conflict_queue, NO_EVENT64,
            THREAD_INTERRUPTED, WAITQ_ALL_PRIORITIES) == KERN_INVALID_ARGUMENT)
    panic("bad select_conflict_queue");
  }
  p->p_fpdrainwait = 1;

  msleep(&p->p_fpdrainwait, &p->p_fdmlock, PRIBIO, "fpdrain", ((void*)0));

 }




 if ((fp->f_flags & FP_SELCONFLICT) == FP_SELCONFLICT)
  fp->f_flags &= ~FP_SELCONFLICT;
}
