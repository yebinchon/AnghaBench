
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int uid_t ;
struct vnode {int v_label; } ;
typedef int kauth_cred_t ;
typedef int gid_t ;


 int MAC_CHECK (int ,int ,struct vnode*,int ,int ,int ) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_check_setowner ;

int
mac_vnode_check_setowner(vfs_context_t ctx, struct vnode *vp, uid_t uid,
    gid_t gid)
{
 kauth_cred_t cred;
 int error;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);
 MAC_CHECK(vnode_check_setowner, cred, vp, vp->v_label, uid, gid);
 return (error);
}
