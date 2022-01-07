
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_rwlock; int mnt_renamelock; int mnt_iter_lock; int mnt_mlock; } ;


 int lck_mtx_init (int *,int ,int ) ;
 int lck_rw_init (int *,int ,int ) ;
 int mnt_lck_attr ;
 int mnt_lck_grp ;

void
mount_lock_init(mount_t mp)
{
 lck_mtx_init(&mp->mnt_mlock, mnt_lck_grp, mnt_lck_attr);
 lck_mtx_init(&mp->mnt_iter_lock, mnt_lck_grp, mnt_lck_attr);
 lck_mtx_init(&mp->mnt_renamelock, mnt_lck_grp, mnt_lck_attr);
 lck_rw_init(&mp->mnt_rwlock, mnt_lck_grp, mnt_lck_attr);
}
