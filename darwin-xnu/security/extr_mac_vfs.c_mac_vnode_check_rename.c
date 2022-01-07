
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int * v_label; } ;
struct componentname {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct vnode*,int *,struct vnode*,int *,int,...) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_check_rename ;
 int vnode_check_rename_from ;
 int vnode_check_rename_to ;

int
mac_vnode_check_rename(vfs_context_t ctx, struct vnode *dvp,
    struct vnode *vp, struct componentname *cnp, struct vnode *tdvp,
    struct vnode *tvp, struct componentname *tcnp)
{
 kauth_cred_t cred;
 int error;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);

 MAC_CHECK(vnode_check_rename_from, cred, dvp, dvp->v_label, vp,
     vp->v_label, cnp);
 if (error)
  return (error);

 MAC_CHECK(vnode_check_rename_to, cred, tdvp, tdvp->v_label, tvp,
     tvp != ((void*)0) ? tvp->v_label : ((void*)0), dvp == tdvp, tcnp);
 if (error)
  return (error);

 MAC_CHECK(vnode_check_rename, cred, dvp, dvp->v_label, vp,
     vp->v_label, cnp, tdvp, tdvp->v_label, tvp,
     tvp != ((void*)0) ? tvp->v_label : ((void*)0), tcnp);
 return (error);
}
