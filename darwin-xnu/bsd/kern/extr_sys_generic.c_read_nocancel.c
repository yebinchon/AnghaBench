
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_ssize_t ;
struct vfs_context {int vc_ucred; } ;
struct read_nocancel_args {int fd; int nbyte; int cbuf; } ;
struct proc {int dummy; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef int off_t ;
struct TYPE_2__ {int fg_cred; } ;


 int dofileread (struct vfs_context*,struct fileproc*,int ,int ,int ,int ,int *) ;
 int donefileread (struct proc*,struct fileproc*,int) ;
 int preparefileread (struct proc*,struct fileproc**,int,int ) ;
 struct vfs_context* vfs_context_current () ;

int
read_nocancel(struct proc *p, struct read_nocancel_args *uap, user_ssize_t *retval)
{
 struct fileproc *fp;
 int error;
 int fd = uap->fd;
 struct vfs_context context;

 if ( (error = preparefileread(p, &fp, fd, 0)) )
         return (error);

 context = *(vfs_context_current());
 context.vc_ucred = fp->f_fglob->fg_cred;

 error = dofileread(&context, fp, uap->cbuf, uap->nbyte,
      (off_t)-1, 0, retval);

 donefileread(p, fp, fd);

 return (error);
}
