
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {scalar_t__ mnt_iterref; } ;


 int mount_list_lock () ;
 int mount_list_unlock () ;

int
mount_iterref(mount_t mp, int locked)
{
 int retval = 0;

 if (!locked)
  mount_list_lock();
 if (mp->mnt_iterref < 0) {
  retval = 1;
 } else {
  mp->mnt_iterref++;
 }
 if (!locked)
  mount_list_unlock();
 return(retval);
}
