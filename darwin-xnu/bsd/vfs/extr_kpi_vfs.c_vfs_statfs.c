
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsstatfs {int dummy; } ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {struct vfsstatfs mnt_vfsstat; } ;



struct vfsstatfs *
vfs_statfs(mount_t mp)
{
 return(&mp->mnt_vfsstat);
}
