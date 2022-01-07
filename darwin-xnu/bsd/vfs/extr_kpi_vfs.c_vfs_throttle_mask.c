
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_throttle_mask; } ;



uint64_t
vfs_throttle_mask(mount_t mp)
{
 return(mp->mnt_throttle_mask);
}
