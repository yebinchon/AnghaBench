
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct fpathconf_args {int fd; int name; } ;
struct fileproc {int f_type; scalar_t__ f_data; } ;
typedef int proc_t ;
typedef int int32_t ;
typedef int file_type_t ;
typedef scalar_t__ caddr_t ;


 int ARG_VNODE1 ;
 int AUDIT_ARG (int,int,...) ;



 int EINVAL ;
 int PIPE_BUF ;
 int _PC_PIPE_BUF ;
 int fp_drop (int ,int,struct fileproc*,int ) ;
 int fp_lookup (int ,int,struct fileproc**,int ) ;
 int vfs_context_current () ;
 int vn_pathconf (struct vnode*,int ,int *,int ) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnpath ;

int
fpathconf(proc_t p, struct fpathconf_args *uap, int32_t *retval)
{
 int fd = uap->fd;
 struct fileproc *fp;
 struct vnode *vp;
 int error = 0;
 file_type_t type;
 caddr_t data;


 AUDIT_ARG(fd, uap->fd);
 if ( (error = fp_lookup(p, fd, &fp, 0)) )
  return(error);
 type = fp->f_type;
 data = fp->f_data;

 switch (type) {

 case 129:
  if (uap->name != _PC_PIPE_BUF) {
   error = EINVAL;
   goto out;
  }
  *retval = PIPE_BUF;
  error = 0;
  goto out;

 case 130:
  if (uap->name != _PC_PIPE_BUF) {
   error = EINVAL;
   goto out;
  }
  *retval = PIPE_BUF;
  error = 0;
  goto out;

 case 128:
  vp = (struct vnode *)data;

  if ( (error = vnode_getwithref(vp)) == 0) {
          AUDIT_ARG(vnpath, vp, ARG_VNODE1);

   error = vn_pathconf(vp, uap->name, retval, vfs_context_current());

   (void)vnode_put(vp);
  }
  goto out;

 default:
  error = EINVAL;
  goto out;

 }

out:
 fp_drop(p, fd, fp, 0);
 return(error);
}
