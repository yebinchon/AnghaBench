
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef TYPE_1__* mount_t ;
typedef int gid_t ;
struct TYPE_3__ {int mnt_fsgroup; int mnt_fsowner; } ;



void vfs_setowner(mount_t mp, uid_t uid, gid_t gid)
{
 mp->mnt_fsowner = uid;
 mp->mnt_fsgroup = gid;
}
