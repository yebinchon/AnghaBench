
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_iterref; } ;


 int mount_list_lock () ;
 int mount_list_unlock () ;

void
mount_iterreset(mount_t mp)
{
 mount_list_lock();
 if (mp->mnt_iterref == -1)
  mp->mnt_iterref = 0;
 mount_list_unlock();
}
