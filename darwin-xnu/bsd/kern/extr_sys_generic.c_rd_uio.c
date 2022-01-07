
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_ssize_t ;
typedef int uio_t ;
struct vfs_context {int vc_ucred; } ;
struct proc {int dummy; } ;
struct fileproc {int f_cred; } ;


 int EINTR ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int donefileread (struct proc*,struct fileproc*,int) ;
 int fo_read (struct fileproc*,int ,int ,struct vfs_context*) ;
 int preparefileread (struct proc*,struct fileproc**,int,int ) ;
 scalar_t__ uio_resid (int ) ;
 struct vfs_context* vfs_context_current () ;

int
rd_uio(struct proc *p, int fdes, uio_t uio, user_ssize_t *retval)
{
 struct fileproc *fp;
 int error;
 user_ssize_t count;
 struct vfs_context context = *vfs_context_current();

 if ( (error = preparefileread(p, &fp, fdes, 0)) )
         return (error);

 count = uio_resid(uio);

 context.vc_ucred = fp->f_cred;

 error = fo_read(fp, uio, 0, &context);

 if (error) {
         if (uio_resid(uio) != count && (error == ERESTART ||
      error == EINTR || error == EWOULDBLOCK))
          error = 0;
 }
 *retval = count - uio_resid(uio);

 donefileread(p, fp, fdes);

 return (error);
}
