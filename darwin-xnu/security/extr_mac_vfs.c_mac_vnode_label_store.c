
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_label; } ;
struct label {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct vnode*,int ,struct label*) ;
 int mac_cred_check_enforce (int ) ;
 int mac_label_vnodes ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_label_store ;

__attribute__((used)) static int
mac_vnode_label_store(vfs_context_t ctx, struct vnode *vp,
    struct label *intlabel)
{
 kauth_cred_t cred;
 int error;






 if (!mac_label_vnodes)
  return 0;

 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);
 MAC_CHECK(vnode_label_store, cred, vp, vp->v_label, intlabel);

 return (error);
}
