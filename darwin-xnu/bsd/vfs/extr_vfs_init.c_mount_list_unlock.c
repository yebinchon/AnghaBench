
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_mtx_unlock (int ) ;
 int mnt_list_mtx_lock ;

void
mount_list_unlock(void)
{
 lck_mtx_unlock(mnt_list_mtx_lock);
}
