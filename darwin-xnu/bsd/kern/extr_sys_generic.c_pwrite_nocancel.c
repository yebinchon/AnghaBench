
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef scalar_t__ user_ssize_t ;
struct vfs_context {int vc_ucred; } ;
struct pwrite_nocancel_args {int fd; int offset; int nbyte; int buf; } ;
struct proc {int dummy; } ;
struct fileproc {int f_flag; scalar_t__ f_type; TYPE_1__* f_fglob; } ;
typedef int off_t ;
struct TYPE_5__ {int v_flag; } ;
struct TYPE_4__ {scalar_t__ fg_data; int fg_cred; } ;


 int AUDIT_ARG (int,int) ;
 int BSDDBG_CODE (int ,int ) ;
 int DBG_BSD_SC_EXTENDED_INFO ;
 int DBG_FUNC_NONE ;
 scalar_t__ DTYPE_VNODE ;
 int EBADF ;
 int EINVAL ;
 int ENXIO ;
 int ESPIPE ;
 int FOF_OFFSET ;
 scalar_t__ FP_ISGUARDED (struct fileproc*,int ) ;
 int FWRITE ;
 int GUARD_WRITE ;
 int KERNEL_DEBUG_CONSTANT (int,int,int ,unsigned int,unsigned int,int ) ;
 int SYS_pwrite ;
 int VISTTY ;
 int dofilewrite (struct vfs_context*,struct fileproc*,int ,int ,int,int ,scalar_t__*) ;
 int fp_drop (struct proc*,int,struct fileproc*,int ) ;
 int fp_drop_written (struct proc*,int,struct fileproc*) ;
 int fp_guard_exception (struct proc*,int,struct fileproc*,int ) ;
 int fp_lookup (struct proc*,int,struct fileproc**,int ) ;
 int kGUARD_EXC_WRITE ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 struct vfs_context* vfs_context_current () ;
 scalar_t__ vnode_isfifo (TYPE_2__*) ;

int
pwrite_nocancel(struct proc *p, struct pwrite_nocancel_args *uap, user_ssize_t *retval)
{
        struct fileproc *fp;
        int error;
 int fd = uap->fd;
 vnode_t vp = (vnode_t)0;
 bool wrote_some = 0;

 AUDIT_ARG(fd, fd);

 error = fp_lookup(p,fd,&fp,0);
 if (error)
  return(error);

 if ((fp->f_flag & FWRITE) == 0) {
  error = EBADF;
 } else if (FP_ISGUARDED(fp, GUARD_WRITE)) {
  proc_fdlock(p);
  error = fp_guard_exception(p, fd, fp, kGUARD_EXC_WRITE);
  proc_fdunlock(p);
 } else {
  struct vfs_context context = *vfs_context_current();
  context.vc_ucred = fp->f_fglob->fg_cred;

  if (fp->f_type != DTYPE_VNODE) {
   error = ESPIPE;
   goto errout;
  }
  vp = (vnode_t)fp->f_fglob->fg_data;
  if (vnode_isfifo(vp)) {
   error = ESPIPE;
   goto errout;
  }
  if ((vp->v_flag & VISTTY)) {
   error = ENXIO;
   goto errout;
  }
  if (uap->offset == (off_t)-1) {
   error = EINVAL;
   goto errout;
  }

      error = dofilewrite(&context, fp, uap->buf, uap->nbyte,
   uap->offset, FOF_OFFSET, retval);
   wrote_some = *retval > 0;
        }
errout:
 if (wrote_some)
         fp_drop_written(p, fd, fp);
 else
         fp_drop(p, fd, fp, 0);

 KERNEL_DEBUG_CONSTANT((BSDDBG_CODE(DBG_BSD_SC_EXTENDED_INFO, SYS_pwrite) | DBG_FUNC_NONE),
       uap->fd, uap->nbyte, (unsigned int)((uap->offset >> 32)), (unsigned int)(uap->offset), 0);

        return(error);
}
