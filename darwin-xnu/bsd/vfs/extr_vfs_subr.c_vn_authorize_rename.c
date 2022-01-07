
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int dummy; } ;
struct componentname {int dummy; } ;


 int vn_authorize_renamex (struct vnode*,struct vnode*,struct componentname*,struct vnode*,struct vnode*,struct componentname*,int ,int ,void*) ;

int
vn_authorize_rename(struct vnode *fdvp, struct vnode *fvp, struct componentname *fcnp,
     struct vnode *tdvp, struct vnode *tvp, struct componentname *tcnp,
     vfs_context_t ctx, void *reserved)
{
 return vn_authorize_renamex(fdvp, fvp, fcnp, tdvp, tvp, tcnp, ctx, 0, reserved);
}
