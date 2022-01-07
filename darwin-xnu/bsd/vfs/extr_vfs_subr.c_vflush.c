
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {unsigned int v_id; int v_flag; scalar_t__ v_writecount; scalar_t__ v_type; scalar_t__ v_usecount; scalar_t__ v_kusecount; int v_op; int v_lflag; int v_iocount; int v_lock; struct mount* v_mount; } ;
struct mount {int mnt_kern_flag; int mnt_vnodelist; int mnt_workerqueue; } ;


 int EBUSY ;
 int FORCECLOSE ;
 scalar_t__ ISSET (int ,int ) ;
 int MNTK_UNMOUNT_PREFLIGHT ;
 int PVFS ;
 int SKIPROOT ;
 int SKIPSWAP ;
 int SKIPSYSTEM ;
 int TAILQ_EMPTY (int *) ;
 struct vnode* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct vnode*,int ) ;
 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int VDEVFLUSH ;
 int VL_DEAD ;
 int VL_TERMINATE ;
 int VL_TERMWANT ;
 int VNOFLUSH ;
 scalar_t__ VREG ;
 int VROOT ;
 int VSWAP ;
 int VSYSTEM ;
 int WRITECLOSE ;
 scalar_t__ busyprt ;
 int mount_iterate_lock (struct mount*) ;
 int mount_iterate_unlock (struct mount*) ;
 int mount_lock (struct mount*) ;
 int mount_unlock (struct mount*) ;
 int msleep (int *,int *,int ,char*,int *) ;
 int record_vp (struct vnode*,int) ;
 int spec_vnodeop_p ;
 int v_mntvnodes ;
 int vclean (struct vnode*,int ) ;
 int vnode_abort_advlocks (struct vnode*) ;
 int vnode_dropiocount (struct vnode*) ;
 int vnode_iterate_clear (struct mount*) ;
 int vnode_iterate_prepare (struct mount*) ;
 scalar_t__ vnode_iterate_reloadq (struct mount*) ;
 int vnode_iterate_setup (struct mount*) ;
 int vnode_list_add (struct vnode*) ;
 int vnode_lock_convert (struct vnode*) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_reclaim_internal (struct vnode*,int,int,int ) ;
 scalar_t__ vnode_umount_preflight (struct mount*,struct vnode*,int) ;
 int vnode_unlock (struct vnode*) ;
 int vprint (char*,struct vnode*) ;

int
vflush(struct mount *mp, struct vnode *skipvp, int flags)
{
 struct vnode *vp;
 int busy = 0;
 int reclaimed = 0;
 int retval;
 unsigned int vid;




 mount_iterate_lock(mp);

 mount_lock(mp);
 vnode_iterate_setup(mp);







 if (((flags & FORCECLOSE)==0) && ((mp->mnt_kern_flag & MNTK_UNMOUNT_PREFLIGHT) != 0)) {
  if (vnode_umount_preflight(mp, skipvp, flags)) {
   vnode_iterate_clear(mp);
   mount_unlock(mp);
   mount_iterate_unlock(mp);
   return(EBUSY);
  }
 }
loop:

 retval = vnode_iterate_prepare(mp);

 if (retval == 0) {
  vnode_iterate_clear(mp);
  mount_unlock(mp);
  mount_iterate_unlock(mp);
  return(retval);
 }


 while (!TAILQ_EMPTY(&mp->mnt_workerqueue)) {

  vp = TAILQ_FIRST(&mp->mnt_workerqueue);
  TAILQ_REMOVE(&mp->mnt_workerqueue, vp, v_mntvnodes);
  TAILQ_INSERT_TAIL(&mp->mnt_vnodelist, vp, v_mntvnodes);

  if ( (vp->v_mount != mp) || (vp == skipvp)) {
   continue;
  }
  vid = vp->v_id;
  mount_unlock(mp);

  vnode_lock_spin(vp);


  while (vp->v_id == vid && ISSET(vp->v_lflag, VL_TERMINATE)) {
   vp->v_lflag |= VL_TERMWANT;
   msleep(&vp->v_lflag, &vp->v_lock, PVFS, "vflush", ((void*)0));
  }

  if ((vp->v_id != vid) || ISSET(vp->v_lflag, VL_DEAD)) {
    vnode_unlock(vp);
    mount_lock(mp);
    continue;
  }





  if ((flags & SKIPSYSTEM) && ((vp->v_flag & VSYSTEM) ||
      (vp->v_flag & VNOFLUSH))) {
   vnode_unlock(vp);
   mount_lock(mp);
   continue;
  }



  if ((flags & SKIPSWAP) && (vp->v_flag & VSWAP)) {
   vnode_unlock(vp);
   mount_lock(mp);
   continue;
  }



  if ((flags & SKIPROOT) && (vp->v_flag & VROOT)) {
   vnode_unlock(vp);
   mount_lock(mp);
   continue;
  }




  if ((flags & WRITECLOSE) &&
      (vp->v_writecount == 0 || vp->v_type != VREG)) {
   vnode_unlock(vp);
   mount_lock(mp);
   continue;
  }




  if (((vp->v_usecount == 0) ||
      ((vp->v_usecount - vp->v_kusecount) == 0))) {

   vnode_lock_convert(vp);
          vp->v_iocount++;



   vnode_reclaim_internal(vp, 1, 1, 0);
   vnode_dropiocount(vp);
   vnode_list_add(vp);
   vnode_unlock(vp);

   reclaimed++;
   mount_lock(mp);
   continue;
  }





  if (flags & FORCECLOSE) {
   vnode_lock_convert(vp);

   if (vp->v_type != VBLK && vp->v_type != VCHR) {
    vp->v_iocount++;



    vnode_abort_advlocks(vp);
    vnode_reclaim_internal(vp, 1, 1, 0);
    vnode_dropiocount(vp);
    vnode_list_add(vp);
    vnode_unlock(vp);
   } else {
    vclean(vp, 0);
    vp->v_lflag &= ~VL_DEAD;
    vp->v_op = spec_vnodeop_p;
    vp->v_flag |= VDEVFLUSH;
    vnode_unlock(vp);
   }
   mount_lock(mp);
   continue;
  }




  vnode_unlock(vp);
  mount_lock(mp);
  busy++;
 }


 if (busy && ((flags & FORCECLOSE)==0) && reclaimed) {
  busy = 0;
  reclaimed = 0;
  (void)vnode_iterate_reloadq(mp);

  goto loop;
 }


  if ( vnode_iterate_reloadq(mp) != 0) {
  if (!(busy && ((flags & FORCECLOSE)==0)))
   goto loop;
 }
 vnode_iterate_clear(mp);
 mount_unlock(mp);
 mount_iterate_unlock(mp);

 if (busy && ((flags & FORCECLOSE)==0))
  return (EBUSY);
 return (0);
}
