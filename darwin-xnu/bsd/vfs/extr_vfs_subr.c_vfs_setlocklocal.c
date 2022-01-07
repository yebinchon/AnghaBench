
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_6__ {int mnt_kern_flag; } ;


 int MNTK_LOCK_LOCAL ;
 int mount_lock_spin (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;
 int setlocklocal_callback ;
 int vnode_iterate (TYPE_1__*,int ,int ,int *) ;

void
vfs_setlocklocal(mount_t mp)
{
 mount_lock_spin(mp);
 mp->mnt_kern_flag |= MNTK_LOCK_LOCAL;
 mount_unlock(mp);





 vnode_iterate(mp, 0, setlocklocal_callback, ((void*)0));
}
