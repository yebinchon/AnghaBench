
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct mount {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct mount*,char const*) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int mount_check_snapshot_delete ;
 int vfs_context_ucred (int ) ;

int
mac_mount_check_snapshot_delete(vfs_context_t ctx, struct mount *mp,
    const char *name)
{
 kauth_cred_t cred;
 int error;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);
 MAC_CHECK(mount_check_snapshot_delete, cred, mp, name);
 return (error);
}
