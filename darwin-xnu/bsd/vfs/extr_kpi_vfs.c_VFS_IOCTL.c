
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vfs_context_t ;
typedef int u_long ;
struct mount {TYPE_1__* mnt_op; } ;
typedef int caddr_t ;
struct TYPE_2__ {int (* vfs_ioctl ) (struct mount*,int ,int ,int,int ) ;} ;


 int ENOTSUP ;
 struct mount* dead_mountp ;
 int stub1 (struct mount*,int ,int ,int,int ) ;
 int vfs_context_current () ;

int VFS_IOCTL(struct mount *mp, u_long command, caddr_t data,
     int flags, vfs_context_t context)
{
 if (mp == dead_mountp || !mp->mnt_op->vfs_ioctl)
  return ENOTSUP;

 return mp->mnt_op->vfs_ioctl(mp, command, data, flags,
         context ?: vfs_context_current());
}
