
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sync_type_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_4__ {int mnt_kern_flag; int mnt_flag; } ;


 int MNTK_VIRTUALDEV ;
 int MNT_LOCAL ;
 scalar_t__ SYNC_ONLY_RELIABLE_MEDIA ;
 scalar_t__ SYNC_ONLY_UNRELIABLE_MEDIA ;
 int VFS_RETURNED ;
 int sync_callback (TYPE_1__*,int *) ;

__attribute__((used)) static int
sync_internal_callback(mount_t mp, void *arg)
{
 if (arg) {
  int is_reliable = !(mp->mnt_kern_flag & MNTK_VIRTUALDEV) &&
                     (mp->mnt_flag & MNT_LOCAL);
  sync_type_t sync_type = *((sync_type_t *)arg);

  if ((sync_type == SYNC_ONLY_RELIABLE_MEDIA) && !is_reliable)
   return (VFS_RETURNED);
  else if ((sync_type = SYNC_ONLY_UNRELIABLE_MEDIA) && is_reliable)
   return (VFS_RETURNED);
 }

 (void)sync_callback(mp, ((void*)0));

 return (VFS_RETURNED);
}
