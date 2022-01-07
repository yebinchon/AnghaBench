
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct mount {int mnt_mntlabel; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct mount*,int ) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int mount_check_remount ;
 int vfs_context_ucred (int ) ;

int
mac_mount_check_remount(vfs_context_t ctx, struct mount *mp)
{
 kauth_cred_t cred;
 int error;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);
 MAC_CHECK(mount_check_remount, cred, mp, mp->mnt_mntlabel);

 return (error);
}
