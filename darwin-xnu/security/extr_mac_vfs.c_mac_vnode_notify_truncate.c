
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_label; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,int ,struct vnode*,int ) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_notify_truncate ;

void
mac_vnode_notify_truncate(vfs_context_t ctx, kauth_cred_t file_cred, struct vnode *vp)
{
 kauth_cred_t cred;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return;
 MAC_PERFORM(vnode_notify_truncate, cred, file_cred, vp, vp->v_label);
}
