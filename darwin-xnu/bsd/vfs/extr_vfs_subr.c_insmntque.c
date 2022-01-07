
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_4__* vnode_t ;
typedef TYPE_5__* mount_t ;
struct TYPE_20__ {int mnt_lflag; int mnt_vnodelist; int mnt_newvnodes; int mnt_workerqueue; } ;
struct TYPE_17__ {TYPE_3__** tqe_prev; TYPE_3__* tqe_next; } ;
struct TYPE_19__ {int v_lflag; TYPE_2__ v_mntvnodes; TYPE_5__* v_mount; } ;
struct TYPE_16__ {TYPE_3__** tqe_prev; } ;
struct TYPE_18__ {TYPE_1__ v_mntvnodes; } ;


 int MNT_LITER ;
 int TAILQ_INSERT_HEAD (int *,TYPE_4__*,int ) ;
 TYPE_4__* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,TYPE_4__*,int ) ;
 int VNAMED_MOUNT ;
 TYPE_5__* dead_mountp ;
 int mount_drop (TYPE_5__*,int) ;
 int mount_lock_spin (TYPE_5__*) ;
 int mount_ref (TYPE_5__*,int) ;
 int mount_unlock (TYPE_5__*) ;
 int panic (char*) ;
 int v_mntvnodes ;
 int vnodelst ;

__attribute__((used)) static void
insmntque(vnode_t vp, mount_t mp)
{
 mount_t lmp;



 if ( (lmp = vp->v_mount) != ((void*)0) && lmp != dead_mountp) {
  if ((vp->v_lflag & VNAMED_MOUNT) == 0)
   panic("insmntque: vp not in mount vnode list");
  vp->v_lflag &= ~VNAMED_MOUNT;

  mount_lock_spin(lmp);

  mount_drop(lmp, 1);

  if (vp->v_mntvnodes.tqe_next == ((void*)0)) {
   if (TAILQ_LAST(&lmp->mnt_vnodelist, vnodelst) == vp)
    TAILQ_REMOVE(&lmp->mnt_vnodelist, vp, v_mntvnodes);
   else if (TAILQ_LAST(&lmp->mnt_newvnodes, vnodelst) == vp)
    TAILQ_REMOVE(&lmp->mnt_newvnodes, vp, v_mntvnodes);
   else if (TAILQ_LAST(&lmp->mnt_workerqueue, vnodelst) == vp)
    TAILQ_REMOVE(&lmp->mnt_workerqueue, vp, v_mntvnodes);
   } else {
   vp->v_mntvnodes.tqe_next->v_mntvnodes.tqe_prev = vp->v_mntvnodes.tqe_prev;
   *vp->v_mntvnodes.tqe_prev = vp->v_mntvnodes.tqe_next;
  }
  vp->v_mntvnodes.tqe_next = ((void*)0);
  vp->v_mntvnodes.tqe_prev = ((void*)0);
  mount_unlock(lmp);
  return;
 }




 if ((vp->v_mount = mp) != ((void*)0)) {
  mount_lock_spin(mp);
  if ((vp->v_mntvnodes.tqe_next != 0) && (vp->v_mntvnodes.tqe_prev != 0))
   panic("vp already in mount list");
  if (mp->mnt_lflag & MNT_LITER)
   TAILQ_INSERT_HEAD(&mp->mnt_newvnodes, vp, v_mntvnodes);
  else
   TAILQ_INSERT_HEAD(&mp->mnt_vnodelist, vp, v_mntvnodes);
  if (vp->v_lflag & VNAMED_MOUNT)
   panic("insmntque: vp already in mount vnode list");
  vp->v_lflag |= VNAMED_MOUNT;
  mount_ref(mp, 1);
  mount_unlock(mp);
 }
}
