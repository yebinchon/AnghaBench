
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_rename_flags_t ;
typedef int vfs_context_t ;
struct vnode {int dummy; } ;
struct componentname {int dummy; } ;


 int vn_authorize_renamex_with_paths (struct vnode*,struct vnode*,struct componentname*,int *,struct vnode*,struct vnode*,struct componentname*,int *,int ,int ,void*) ;

int
vn_authorize_renamex(struct vnode *fdvp, struct vnode *fvp, struct componentname *fcnp,
      struct vnode *tdvp, struct vnode *tvp, struct componentname *tcnp,
      vfs_context_t ctx, vfs_rename_flags_t flags, void *reserved)
{

 return vn_authorize_renamex_with_paths(fdvp, fvp, fcnp, ((void*)0), tdvp, tvp, tcnp, ((void*)0), ctx, flags, reserved);
}
