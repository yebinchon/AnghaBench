
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct mount {int mnt_kern_flag; } ;
typedef int fsid_t ;


 int KNOTE (int *,scalar_t__) ;
 int MNT_LNOTRESP ;
 scalar_t__ VQ_DEAD ;
 scalar_t__ VQ_NOTRESP ;
 int fs_klist ;
 int fs_klist_lock ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int mount_lock_spin (struct mount*) ;
 int mount_unlock (struct mount*) ;
 struct mount* vfs_getvfs (int *) ;

void
vfs_event_signal(fsid_t *fsid, u_int32_t event, intptr_t data)
{
 if (event == VQ_DEAD || event == VQ_NOTRESP) {
  struct mount *mp = vfs_getvfs(fsid);
  if (mp) {
   mount_lock_spin(mp);
   if (data)
    mp->mnt_kern_flag &= ~MNT_LNOTRESP;
   else
    mp->mnt_kern_flag |= MNT_LNOTRESP;
   mount_unlock(mp);
  }
 }

 lck_mtx_lock(fs_klist_lock);
 KNOTE(&fs_klist, event);
 lck_mtx_unlock(fs_klist_lock);
}
