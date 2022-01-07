
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_lflag; int v_flag; int v_lock; int * v_label; } ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct mount {int dummy; } ;
struct componentname {int dummy; } ;


 int EWOULDBLOCK ;
 int PDROP ;
 int PVFS ;
 int VL_LABEL ;
 int VL_LABELED ;
 int VL_LABELWAIT ;
 int VNCACHEABLE ;
 int VNODE_LABEL_CREATE ;
 scalar_t__ mac_label_vnodes ;
 int * mac_vnode_label_alloc () ;
 int mac_vnode_label_associate (struct mount*,struct vnode*,int ) ;
 int mac_vnode_notify_create (int ,struct mount*,struct vnode*,struct vnode*,struct componentname*) ;
 int msleep (int **,int *,int,char*,struct timespec*) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;
 int vprint (char*,struct vnode*) ;
 int wakeup (int **) ;

int
vnode_label(struct mount *mp, struct vnode *dvp, struct vnode *vp,
     struct componentname *cnp, int flags, vfs_context_t ctx)
{
 int error = 0;





 if (mac_label_vnodes == 0) {
  if (flags & VNODE_LABEL_CREATE)
   error = mac_vnode_notify_create(ctx,
       mp, dvp, vp, cnp);
  return 0;
 }


 if (vp->v_lflag & VL_LABELED)
  return (0);

 vnode_lock_spin(vp);






 if (vp->v_lflag & VL_LABELED) {
  vnode_unlock(vp);
  return (0);
 }

 if ((vp->v_lflag & VL_LABEL) == 0) {
  vp->v_lflag |= VL_LABEL;


  vnode_unlock(vp);

  if (vp->v_label == ((void*)0))
   vp->v_label = mac_vnode_label_alloc();

  if (flags & VNODE_LABEL_CREATE)
   error = mac_vnode_notify_create(ctx,
       mp, dvp, vp, cnp);
  else
   error = mac_vnode_label_associate(mp, vp, ctx);

  vnode_lock_spin(vp);

  if ((error == 0) && (vp->v_flag & VNCACHEABLE))
   vp->v_lflag |= VL_LABELED;
  vp->v_lflag &= ~VL_LABEL;

  if (vp->v_lflag & VL_LABELWAIT) {
   vp->v_lflag &= ~VL_LABELWAIT;
   wakeup(&vp->v_label);
  }
 } else {
  struct timespec ts;

  ts.tv_sec = 10;
  ts.tv_nsec = 0;

  while (vp->v_lflag & VL_LABEL) {
   vp->v_lflag |= VL_LABELWAIT;

   error = msleep(&vp->v_label, &vp->v_lock, PVFS|PDROP,
           "vnode_label", &ts);
   vnode_lock_spin(vp);

   if (error == EWOULDBLOCK) {
    vprint("vnode label timeout", vp);
    break;
   }
  }

 }
 vnode_unlock(vp);

 return (error);
}
