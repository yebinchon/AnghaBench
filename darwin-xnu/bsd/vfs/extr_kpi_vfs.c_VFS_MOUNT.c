
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
typedef TYPE_2__* mount_t ;
struct TYPE_9__ {TYPE_1__* mnt_op; } ;
struct TYPE_8__ {int (* vfs_mount ) (TYPE_2__*,int ,int ,int ) ;} ;


 int ENOTSUP ;
 TYPE_2__* dead_mountp ;
 int stub1 (TYPE_2__*,int ,int ,int ) ;
 int stub2 (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ vfs_64bitready (TYPE_2__*) ;
 scalar_t__ vfs_context_is64bit (int ) ;

int
VFS_MOUNT(mount_t mp, vnode_t devvp, user_addr_t data, vfs_context_t ctx)
{
 int error;

 if ((mp == dead_mountp) || (mp->mnt_op->vfs_mount == 0))
  return(ENOTSUP);

 if (vfs_context_is64bit(ctx)) {
  if (vfs_64bitready(mp)) {
   error = (*mp->mnt_op->vfs_mount)(mp, devvp, data, ctx);
  }
  else {
   error = ENOTSUP;
  }
 }
 else {
  error = (*mp->mnt_op->vfs_mount)(mp, devvp, data, ctx);
 }

 return (error);
}
