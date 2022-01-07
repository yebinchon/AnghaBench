
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_maxsymlinklen; } ;



uint32_t
vfs_maxsymlen(mount_t mp)
{
 return(mp->mnt_maxsymlinklen);
}
