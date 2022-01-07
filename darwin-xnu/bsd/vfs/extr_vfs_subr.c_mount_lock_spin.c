
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_mlock; } ;


 int lck_mtx_lock_spin (int *) ;

void
mount_lock_spin(mount_t mp)
{
 lck_mtx_lock_spin(&mp->mnt_mlock);
}
