
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {void* mnt_throttle_info; } ;


 int throttle_info_ref (void*) ;
 int throttle_info_rel (void*) ;

void
throttle_info_mount_ref(mount_t mp, void *throttle_info)
{
 if ((throttle_info == ((void*)0)) || (mp == ((void*)0)))
  return;
 throttle_info_ref(throttle_info);




 if (mp->mnt_throttle_info)
  throttle_info_rel(mp->mnt_throttle_info);
 mp->mnt_throttle_info = throttle_info;
}
