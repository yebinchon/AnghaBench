
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_flag; int mnt_kern_flag; } ;


 int MNTK_WANTRDWR ;
 int MNT_RDONLY ;

int
vfs_iswriteupgrade(mount_t mp)
{
 return ((mp->mnt_flag & MNT_RDONLY) && (mp->mnt_kern_flag & MNTK_WANTRDWR));
}
