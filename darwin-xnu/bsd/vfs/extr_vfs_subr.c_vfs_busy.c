
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
typedef int caddr_t ;
struct TYPE_5__ {int mnt_lflag; int mnt_rwlock; int mnt_mlock; } ;


 int ENOENT ;
 int LK_NOWAIT ;
 int MNT_LDEAD ;
 int MNT_LUNMOUNT ;
 int MNT_LWAIT ;
 int PDROP ;
 int PVFS ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int mount_lock (TYPE_1__*) ;
 int mount_unlock (TYPE_1__*) ;
 int msleep (int ,int *,int,char*,int *) ;

int
vfs_busy(mount_t mp, int flags)
{

restart:
 if (mp->mnt_lflag & MNT_LDEAD)
  return (ENOENT);

 mount_lock(mp);

 if (mp->mnt_lflag & MNT_LUNMOUNT) {
  if (flags & LK_NOWAIT || mp->mnt_lflag & MNT_LDEAD) {
          mount_unlock(mp);
   return (ENOENT);
  }







  mp->mnt_lflag |= MNT_LWAIT;
  msleep((caddr_t)mp, &mp->mnt_mlock, (PVFS | PDROP), "vfsbusy", ((void*)0));
  return (ENOENT);
 }

 mount_unlock(mp);

 lck_rw_lock_shared(&mp->mnt_rwlock);





 if (mp->mnt_lflag & (MNT_LDEAD | MNT_LUNMOUNT)) {
  lck_rw_done(&mp->mnt_rwlock);
  goto restart;
 }
 return (0);
}
