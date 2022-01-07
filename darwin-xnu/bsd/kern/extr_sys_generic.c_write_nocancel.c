
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
struct write_nocancel_args {int fd; int nbyte; int cbuf; } ;
struct vfs_context {int vc_ucred; } ;
struct proc {int dummy; } ;
struct fileproc {int f_flag; TYPE_1__* f_fglob; } ;
typedef int off_t ;
struct TYPE_2__ {int fg_cred; } ;


 int AUDIT_ARG (int,int) ;
 int EBADF ;
 scalar_t__ FP_ISGUARDED (struct fileproc*,int ) ;
 int FWRITE ;
 int GUARD_WRITE ;
 int dofilewrite (struct vfs_context*,struct fileproc*,int ,int ,int ,int ,scalar_t__*) ;
 int fp_drop (struct proc*,int,struct fileproc*,int ) ;
 int fp_drop_written (struct proc*,int,struct fileproc*) ;
 int fp_guard_exception (struct proc*,int,struct fileproc*,int ) ;
 int fp_lookup (struct proc*,int,struct fileproc**,int ) ;
 int kGUARD_EXC_WRITE ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 struct vfs_context* vfs_context_current () ;

int
write_nocancel(struct proc *p, struct write_nocancel_args *uap, user_ssize_t *retval)
{
 struct fileproc *fp;
 int error;
 int fd = uap->fd;
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
  struct vfs_context context = *(vfs_context_current());
  context.vc_ucred = fp->f_fglob->fg_cred;

  error = dofilewrite(&context, fp, uap->cbuf, uap->nbyte,
   (off_t)-1, 0, retval);

  wrote_some = *retval > 0;
 }
 if (wrote_some)
         fp_drop_written(p, fd, fp);
 else
         fp_drop(p, fd, fp, 0);
 return(error);
}
