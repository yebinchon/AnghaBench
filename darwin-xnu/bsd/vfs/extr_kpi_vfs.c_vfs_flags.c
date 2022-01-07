
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_flag; } ;


 int MNT_CMDFLAGS ;
 int MNT_VISFLAGMASK ;

uint64_t
vfs_flags(mount_t mp)
{
 return((uint64_t)(mp->mnt_flag & (MNT_CMDFLAGS | MNT_VISFLAGMASK)));
}
