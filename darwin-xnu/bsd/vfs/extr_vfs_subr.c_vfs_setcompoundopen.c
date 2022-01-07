
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_5__ {int mnt_compound_ops; } ;


 int COMPOUND_VNOP_OPEN ;
 int mount_lock_spin (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;

void
vfs_setcompoundopen(mount_t mp)
{
 mount_lock_spin(mp);
 mp->mnt_compound_ops |= COMPOUND_VNOP_OPEN;
 mount_unlock(mp);
}
