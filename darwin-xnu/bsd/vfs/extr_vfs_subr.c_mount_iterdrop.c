
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_iterref; } ;


 int mount_list_lock () ;
 int mount_list_unlock () ;
 int wakeup (int *) ;

void
mount_iterdrop(mount_t mp)
{
 mount_list_lock();
 mp->mnt_iterref--;
 wakeup(&mp->mnt_iterref);
 mount_list_unlock();
}
