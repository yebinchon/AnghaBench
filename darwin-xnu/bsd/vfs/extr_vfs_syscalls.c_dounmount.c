
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef struct vnode* vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct vnode {scalar_t__ v_resolve; int v_flag; struct mount* v_mountedhere; } ;
struct mount {int mnt_lflag; int mnt_flag; int mnt_rwlock; int mnt_triggerdata; int (* mnt_triggercallback ) (struct mount*,int ,int ,int ) ;TYPE_1__* mnt_vtable; int mnt_crossref; struct vnode* mnt_vnodecovered; struct vnode* mnt_devvp; int mnt_kern_flag; struct vnode* mnt_realrootvp; } ;
typedef TYPE_2__* proc_t ;
typedef int caddr_t ;
struct TYPE_6__ {int p_flag; } ;
struct TYPE_5__ {int vfc_vfsflags; int vfc_refcount; } ;


 int CLR (int ,int ) ;
 int EBUSY ;
 int FORCECLOSE ;
 int FREAD ;
 int FREE_ZONE (int ,int,int ) ;
 int FWRITE ;
 int IOBSDMountChange (struct mount*,int ) ;
 int MNTK_UNMOUNT ;
 int MNT_ASYNC ;
 int MNT_FORCE ;
 int MNT_LDEAD ;
 int MNT_LFORCE ;
 int MNT_LNOSUB ;
 int MNT_LUNMOUNT ;
 int MNT_LWAIT ;
 int MNT_NOBLOCK ;
 int MNT_RDONLY ;
 int MNT_ROOTFS ;
 int MNT_WAIT ;
 int M_MOUNT ;
 int NOTE_WRITE ;
 struct vnode* NULLVP ;
 int OSAddAtomic (int,int *) ;
 int OSBitAndAtomic (int ,int *) ;
 int OSBitOrAtomic (int,int *) ;
 int P_NOREMOTEHANG ;
 int SKIPROOT ;
 int SKIPSWAP ;
 int SKIPSYSTEM ;
 int VFC_VFSLOCALARGS ;
 int VFS_SYNC (struct mount*,int ,int ) ;
 int VFS_UNMOUNT (struct mount*,int,int ) ;
 int VMOUNT ;
 int VNOP_CLOSE (struct vnode*,int,int ) ;
 int VQ_UNMOUNT ;
 int VTC_RELEASE ;
 int VTC_REPLACE ;
 int cache_purgevfs (struct mount*) ;
 int disk_conditioner_unmount (struct mount*) ;
 int dounmount_submounts (struct mount*,int,int ) ;
 int fsevent_unmount (struct mount*,int ) ;
 int kIOMountChangeUnmount ;
 TYPE_2__* kernproc ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lock_vnode_and_post (struct vnode*,int ) ;
 int mac_mount_label_destroy (struct mount*) ;
 int mount_drop (struct mount*,int) ;
 int mount_dropcrossref (struct mount*,struct vnode*,int ) ;
 int mount_generation ;
 int mount_iterdrain (struct mount*) ;
 int mount_iterreset (struct mount*) ;
 int mount_list_lock () ;
 int mount_list_remove (struct mount*) ;
 int mount_list_unlock () ;
 int mount_lock (struct mount*) ;
 int mount_lock_destroy (struct mount*) ;
 int mount_refdrain (struct mount*) ;
 int mount_unlock (struct mount*) ;
 int name_cache_lock () ;
 int name_cache_unlock () ;
 int panic (char*) ;
 int stub1 (struct mount*,int ,int ,int ) ;
 int stub2 (struct mount*,int ,int ,int ) ;
 int ubc_umount (struct mount*) ;
 int vflush (struct mount*,struct vnode*,int) ;
 TYPE_2__* vfs_context_proc (int ) ;
 int vfs_event_signal (int *,int ,intptr_t) ;
 int vfs_nested_trigger_unmounts (struct mount*,int,int ) ;
 int vfs_nummntops ;
 int vnode_clearmountedon (struct vnode*) ;
 int vnode_getalways (struct vnode*) ;
 struct vnode* vnode_getparent (struct vnode*) ;
 int vnode_isrecycled (struct vnode*) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_rele (struct vnode*) ;
 int vnode_trigger_rearm (struct vnode*,int ) ;
 int vnode_unlock (struct vnode*) ;
 int wakeup (int ) ;

int
dounmount(struct mount *mp, int flags, int withref, vfs_context_t ctx)
{
 vnode_t coveredvp = (vnode_t)0;
 int error;
 int needwakeup = 0;
 int forcedunmount = 0;
 int lflags = 0;
 struct vnode *devvp = NULLVP;
 mount_lock(mp);





 if (mp->mnt_lflag & MNT_LUNMOUNT) {
  if (withref != 0)
   mount_drop(mp, 1);
  mount_unlock(mp);
  return (EBUSY);
 }

 if (flags & MNT_FORCE) {
  forcedunmount = 1;
  mp->mnt_lflag |= MNT_LFORCE;
 }






 mp->mnt_kern_flag |= MNTK_UNMOUNT;
 mp->mnt_lflag |= MNT_LUNMOUNT;
 mp->mnt_flag &=~ MNT_ASYNC;






 mp->mnt_realrootvp = NULLVP;
 mount_unlock(mp);

 if (forcedunmount && (flags & MNT_LNOSUB) == 0) {





  (void) dounmount_submounts(mp, flags | MNT_LNOSUB, ctx);
 }
 name_cache_lock();
 mount_generation++;
 name_cache_unlock();


 lck_rw_lock_exclusive(&mp->mnt_rwlock);
 if (withref != 0)
  mount_drop(mp, 0);
 error = 0;
 if (forcedunmount == 0) {
  ubc_umount(mp);
  if ((mp->mnt_flag & MNT_RDONLY) == 0) {
   error = VFS_SYNC(mp, MNT_WAIT, ctx);
   if (error) {
    mount_lock(mp);
    mp->mnt_kern_flag &= ~MNTK_UNMOUNT;
    mp->mnt_lflag &= ~MNT_LUNMOUNT;
    mp->mnt_lflag &= ~MNT_LFORCE;
    goto out;
   }
  }
 }


 disk_conditioner_unmount(mp);

 IOBSDMountChange(mp, kIOMountChangeUnmount);





 if (forcedunmount)
  lflags |= FORCECLOSE;
 error = vflush(mp, NULLVP, SKIPSWAP | SKIPSYSTEM | SKIPROOT | lflags);
 if ((forcedunmount == 0) && error) {
  mount_lock(mp);
  mp->mnt_kern_flag &= ~MNTK_UNMOUNT;
  mp->mnt_lflag &= ~MNT_LUNMOUNT;
  mp->mnt_lflag &= ~MNT_LFORCE;
  goto out;
 }


 mount_iterdrain(mp);

 error = VFS_UNMOUNT(mp, flags, ctx);
 if (error) {
  mount_iterreset(mp);
  mount_lock(mp);
  mp->mnt_kern_flag &= ~MNTK_UNMOUNT;
  mp->mnt_lflag &= ~MNT_LUNMOUNT;
  mp->mnt_lflag &= ~MNT_LFORCE;
  goto out;
 }


 if (!error)
  OSAddAtomic(1, &vfs_nummntops);

 if ( mp->mnt_devvp && mp->mnt_vtable->vfc_vfsflags & VFC_VFSLOCALARGS) {

  devvp = mp->mnt_devvp;
  vnode_getalways(devvp);
  vnode_rele(devvp);
  VNOP_CLOSE(devvp, mp->mnt_flag & MNT_RDONLY ? FREAD : FREAD|FWRITE,
                       ctx);
  vnode_clearmountedon(devvp);
  vnode_put(devvp);
 }
 lck_rw_done(&mp->mnt_rwlock);
 mount_list_remove(mp);
 lck_rw_lock_exclusive(&mp->mnt_rwlock);


 if ((coveredvp = mp->mnt_vnodecovered) != NULLVP) {







  vnode_getalways(coveredvp);
  vnode_lock_spin(coveredvp);

  mp->mnt_crossref++;
  coveredvp->v_mountedhere = (struct mount *)0;
  CLR(coveredvp->v_flag, VMOUNT);

  vnode_unlock(coveredvp);
  vnode_put(coveredvp);
 }

 mount_list_lock();
 mp->mnt_vtable->vfc_refcount--;
 mount_list_unlock();

 cache_purgevfs(mp);
 vfs_event_signal(((void*)0), VQ_UNMOUNT, (intptr_t)((void*)0));
 mount_lock(mp);
 mp->mnt_lflag |= MNT_LDEAD;

 if (mp->mnt_lflag & MNT_LWAIT) {







  mp->mnt_lflag &= ~MNT_LWAIT;
  wakeup((caddr_t)mp);
 }
 mount_refdrain(mp);
out:
 if (mp->mnt_lflag & MNT_LWAIT) {
  mp->mnt_lflag &= ~MNT_LWAIT;
  needwakeup = 1;
 }
 mount_unlock(mp);


 lck_rw_done(&mp->mnt_rwlock);

 if (needwakeup)
  wakeup((caddr_t)mp);

 if (!error) {
  if ((coveredvp != NULLVP)) {
   vnode_t pvp = NULLVP;
   vnode_getalways(coveredvp);

   mount_dropcrossref(mp, coveredvp, 0);







   if (!vnode_isrecycled(coveredvp)) {
    pvp = vnode_getparent(coveredvp);





   }

   vnode_rele(coveredvp);
   vnode_put(coveredvp);
   coveredvp = NULLVP;

   if (pvp) {
    lock_vnode_and_post(pvp, NOTE_WRITE);
    vnode_put(pvp);
   }
  } else if (mp->mnt_flag & MNT_ROOTFS) {
    mount_lock_destroy(mp);



    FREE_ZONE((caddr_t)mp, sizeof (struct mount), M_MOUNT);
  } else
   panic("dounmount: no coveredvp");
 }
 return (error);
}
