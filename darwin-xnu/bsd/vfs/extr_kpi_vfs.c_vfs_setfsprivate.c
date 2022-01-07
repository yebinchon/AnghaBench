
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_5__ {void* mnt_data; } ;


 int mount_lock (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;

void
vfs_setfsprivate(mount_t mp, void *mntdata)
{
 mount_lock(mp);
 mp->mnt_data = mntdata;
 mount_unlock(mp);
}
