
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_5__ {int mnt_kern_flag; } ;


 int MNTK_NOSWAP ;
 int mount_lock (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;

void
vfs_setnoswap(mount_t mp)
{
 mount_lock(mp);
 mp->mnt_kern_flag |= MNTK_NOSWAP;
 mount_unlock(mp);
}
