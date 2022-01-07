
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnop_setattr_args {int a_context; int a_vap; int a_vp; } ;
struct vnode {int dummy; } ;
struct proc {int dummy; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
struct TYPE_4__ {scalar_t__ fg_data; } ;
struct TYPE_3__ {int fd_type; unsigned int fd_fd; } ;





 int EACCES ;
 int EBADF ;
 int FILEGLOB_DTYPE (TYPE_2__*) ;

 TYPE_1__* VTOFDESC (int ) ;
 int fp_drop (struct proc*,unsigned int,struct fileproc*,int ) ;
 int fp_lookup (struct proc*,unsigned int,struct fileproc**,int ) ;
 int panic (char*) ;
 struct proc* vfs_context_proc (int ) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_setattr (struct vnode*,int ,int ) ;

int
fdesc_setattr(struct vnop_setattr_args *ap)
{
 struct fileproc *fp;
 unsigned fd;
 int error;
 struct proc * p = vfs_context_proc(ap->a_context);




 switch (VTOFDESC(ap->a_vp)->fd_type) {
 case 128:
  break;
 default:
  panic("Invalid type for an fdesc node!\n");
  return (EACCES);
 }

 fd = VTOFDESC(ap->a_vp)->fd_fd;
 if ((error = fp_lookup(vfs_context_proc(ap->a_context), fd, &fp, 0)))
  return (error);




 switch (FILEGLOB_DTYPE(fp->f_fglob)) {
 case 129:
 {
  if ((error = vnode_getwithref((struct vnode *) fp->f_fglob->fg_data)) != 0)
   break;
  error = vnode_setattr((struct vnode *) fp->f_fglob->fg_data, ap->a_vap, ap->a_context);
  (void)vnode_put((struct vnode *) fp->f_fglob->fg_data);
  break;
 }

 case 130:
 case 131:
  error = 0;
  break;

 default:
  error = EBADF;
  break;
 }

 fp_drop(p, fd, fp, 0);
 return (error);
}
