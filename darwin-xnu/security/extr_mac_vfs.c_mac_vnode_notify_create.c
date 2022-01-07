
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_label; } ;
struct mount {int mnt_mntlabel; } ;
struct componentname {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct mount*,int ,struct vnode*,int ,struct vnode*,int ,struct componentname*) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_notify_create ;

int
mac_vnode_notify_create(vfs_context_t ctx, struct mount *mp,
    struct vnode *dvp, struct vnode *vp, struct componentname *cnp)
{
 kauth_cred_t cred;
 int error;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);
 MAC_CHECK(vnode_notify_create, cred, mp, mp->mnt_mntlabel,
     dvp, dvp->v_label, vp, vp->v_label, cnp);

 return (error);
}
