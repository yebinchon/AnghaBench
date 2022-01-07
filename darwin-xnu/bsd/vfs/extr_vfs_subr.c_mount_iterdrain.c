
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
typedef int caddr_t ;
struct TYPE_3__ {int mnt_iterref; } ;


 int PVFS ;
 int mnt_list_mtx_lock ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int msleep (int ,int ,int ,char*,int *) ;

void
mount_iterdrain(mount_t mp)
{
 mount_list_lock();
 while (mp->mnt_iterref)
  msleep((caddr_t)&mp->mnt_iterref, mnt_list_mtx_lock, PVFS, "mount_iterdrain", ((void*)0));

 mp->mnt_iterref = -1;
 mount_list_unlock();
}
