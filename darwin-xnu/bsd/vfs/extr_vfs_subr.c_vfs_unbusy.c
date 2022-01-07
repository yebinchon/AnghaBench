
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_rwlock; } ;


 int lck_rw_done (int *) ;

void
vfs_unbusy(mount_t mp)
{
 lck_rw_done(&mp->mnt_rwlock);
}
