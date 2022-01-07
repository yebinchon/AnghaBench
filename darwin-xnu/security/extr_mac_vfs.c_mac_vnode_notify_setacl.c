
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_label; } ;
struct kauth_acl {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct vnode*,int ,struct kauth_acl*) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_notify_setacl ;

void
mac_vnode_notify_setacl(vfs_context_t ctx, struct vnode *vp, struct kauth_acl *acl)
{
 kauth_cred_t cred;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return;
 MAC_PERFORM(vnode_notify_setacl, cred, vp, vp->v_label, acl);
}
