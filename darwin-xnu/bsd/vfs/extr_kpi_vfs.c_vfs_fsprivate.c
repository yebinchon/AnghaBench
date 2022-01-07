
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {void* mnt_data; } ;



void *
vfs_fsprivate(mount_t mp)
{
 return(mp->mnt_data);
}
