
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct fileproc {int dummy; } ;
typedef int proc_t ;


 int NULLVP ;
 int fp_drop (int ,int,struct fileproc*,int ) ;
 int fp_getfvp (int ,int,struct fileproc**,int *) ;
 int vfs_context_proc (int ) ;
 int vnode_getwithref (int ) ;

int
vnode_getfromfd(vfs_context_t ctx, int fd, vnode_t *vpp)
{
 int error;
 vnode_t vp;
 struct fileproc *fp;
 proc_t p = vfs_context_proc(ctx);

 *vpp = NULLVP;

 error = fp_getfvp(p, fd, &fp, &vp);
 if (error)
  return (error);

 error = vnode_getwithref(vp);
 if (error) {
  (void)fp_drop(p, fd, fp, 0);
  return (error);
 }

 (void)fp_drop(p, fd, fp, 0);
 *vpp = vp;
 return (error);
}
