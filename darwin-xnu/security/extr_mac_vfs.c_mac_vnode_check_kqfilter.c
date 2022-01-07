
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_label; } ;
struct knote {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int ,struct knote*,struct vnode*,int ) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_check_kqfilter ;

int
mac_vnode_check_kqfilter(vfs_context_t ctx, kauth_cred_t file_cred,
    struct knote *kn, struct vnode *vp)
{
 kauth_cred_t cred;
 int error;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);
 MAC_CHECK(vnode_check_kqfilter, cred, file_cred, kn, vp,
     vp->v_label);

 return (error);
}
