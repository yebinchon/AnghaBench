
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_kern_flag; } ;


 scalar_t__ ISSET (int ,int ) ;
 int MNTK_SWAP_MOUNT ;

int vfs_isswapmount(mount_t mnt)
{
 return mnt && ISSET(mnt->mnt_kern_flag, MNTK_SWAP_MOUNT) ? 1 : 0;
}
