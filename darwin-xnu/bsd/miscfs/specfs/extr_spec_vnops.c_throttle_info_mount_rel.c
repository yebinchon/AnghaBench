
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int * mnt_throttle_info; } ;


 int throttle_info_rel (int *) ;

void
throttle_info_mount_rel(mount_t mp)
{
 if (mp->mnt_throttle_info)
  throttle_info_rel(mp->mnt_throttle_info);
 mp->mnt_throttle_info = ((void*)0);
}
