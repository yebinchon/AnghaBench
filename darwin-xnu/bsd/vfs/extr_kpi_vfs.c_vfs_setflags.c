
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_5__ {int mnt_flag; } ;


 int MNT_CMDFLAGS ;
 int MNT_VISFLAGMASK ;
 int mount_lock (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;

void
vfs_setflags(mount_t mp, uint64_t flags)
{
 uint32_t lflags = (uint32_t)(flags & (MNT_CMDFLAGS | MNT_VISFLAGMASK));

 mount_lock(mp);
 mp->mnt_flag |= lflags;
 mount_unlock(mp);
}
