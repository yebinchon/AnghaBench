
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_label; } ;
typedef int kauth_cred_t ;


 int ACCESS_MODE_TO_VNODE_MASK (int) ;
 int MAC_CHECK (int ,int ,struct vnode*,int ,int) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_check_access ;

int
mac_vnode_check_access(vfs_context_t ctx, struct vnode *vp,
    int acc_mode)
{
 kauth_cred_t cred;
 int error;
 int mask;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);

 mask = ACCESS_MODE_TO_VNODE_MASK(acc_mode);
 MAC_CHECK(vnode_check_access, cred, vp, vp->v_label, mask);
 return (error);
 }
