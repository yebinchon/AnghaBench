
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_iter_lock; } ;


 int lck_mtx_lock (int *) ;

void
mount_iterate_lock(mount_t mp)
{
 lck_mtx_lock(&mp->mnt_iter_lock);
}
