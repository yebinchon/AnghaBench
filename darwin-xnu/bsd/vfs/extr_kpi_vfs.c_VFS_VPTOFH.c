
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vfs_context_t ;
struct vnode {TYPE_2__* v_mount; } ;
struct TYPE_4__ {TYPE_1__* mnt_op; } ;
struct TYPE_3__ {int (* vfs_vptofh ) (struct vnode*,int*,unsigned char*,int *) ;} ;


 int ENOTSUP ;
 TYPE_2__* dead_mountp ;
 int stub1 (struct vnode*,int*,unsigned char*,int *) ;
 int * vfs_context_current () ;

int
VFS_VPTOFH(struct vnode *vp, int *fhlenp, unsigned char *fhp, vfs_context_t ctx)
{
 int error;

 if ((vp->v_mount == dead_mountp) || (vp->v_mount->mnt_op->vfs_vptofh == 0))
  return(ENOTSUP);

 if (ctx == ((void*)0)) {
  ctx = vfs_context_current();
 }

 error = (*vp->v_mount->mnt_op->vfs_vptofh)(vp, fhlenp, fhp, ctx);

 return(error);
}
