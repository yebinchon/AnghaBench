
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct ftruncate_args {int fd; scalar_t__ length; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef int proc_t ;
typedef int int32_t ;
struct TYPE_2__ {int fg_flag; int fg_cred; scalar_t__ fg_data; } ;


 int ARG_VNODE1 ;
 int AUDIT_ARG (int,int,...) ;


 int EINVAL ;
 int FILEGLOB_DTYPE (TYPE_1__*) ;
 int FWRITE ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,scalar_t__) ;
 int file_drop (int) ;
 int fp_lookup (int ,int,struct fileproc**,int ) ;
 int mac_vnode_check_truncate (int ,int ,scalar_t__) ;
 int mac_vnode_notify_truncate (int ,int ,scalar_t__) ;
 int pshm_truncate (int ,struct fileproc*,int,scalar_t__,int *) ;
 int va_data_size ;
 int vfs_context_current () ;
 int vnode_getwithref (scalar_t__) ;
 int vnode_put (scalar_t__) ;
 int vnode_setattr (scalar_t__,struct vnode_attr*,int ) ;
 int vnpath ;
 int vnpath_withref ;

int
ftruncate(proc_t p, struct ftruncate_args *uap, int32_t *retval)
{
 vfs_context_t ctx = vfs_context_current();
 struct vnode_attr va;
 vnode_t vp;
 struct fileproc *fp;
 int error ;
 int fd = uap->fd;

 AUDIT_ARG(fd, uap->fd);
 if (uap->length < 0)
  return(EINVAL);

 if ( (error = fp_lookup(p,fd,&fp,0)) ) {
  return(error);
 }

 switch (FILEGLOB_DTYPE(fp->f_fglob)) {
 case 129:
  error = pshm_truncate(p, fp, uap->fd, uap->length, retval);
  goto out;
 case 128:
  break;
 default:
  error = EINVAL;
  goto out;
 }

 vp = (vnode_t)fp->f_fglob->fg_data;

 if ((fp->f_fglob->fg_flag & FWRITE) == 0) {
  AUDIT_ARG(vnpath_withref, vp, ARG_VNODE1);
  error = EINVAL;
  goto out;
 }

 if ((error = vnode_getwithref(vp)) != 0) {
  goto out;
 }

 AUDIT_ARG(vnpath, vp, ARG_VNODE1);
 VATTR_INIT(&va);
 VATTR_SET(&va, va_data_size, uap->length);
 error = vnode_setattr(vp, &va, ctx);






 (void)vnode_put(vp);
out:
 file_drop(fd);
 return (error);
}
