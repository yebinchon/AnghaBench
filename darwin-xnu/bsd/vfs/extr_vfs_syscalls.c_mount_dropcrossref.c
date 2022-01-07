
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct mount {int dummy; } ;
typedef TYPE_2__* mount_t ;
typedef int caddr_t ;
struct TYPE_11__ {scalar_t__ mnt_crossref; } ;
struct TYPE_10__ {TYPE_2__* v_mountedhere; } ;


 int FREE_ZONE (int ,int,int ) ;
 int M_MOUNT ;
 int mac_mount_label_destroy (TYPE_2__*) ;
 int mount_lock_destroy (TYPE_2__*) ;
 int panic (char*) ;
 int vnode_lock (TYPE_1__*) ;
 int vnode_put_locked (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

void
mount_dropcrossref(mount_t mp, vnode_t dp, int need_put)
{
 vnode_lock(dp);
 mp->mnt_crossref--;

 if (mp->mnt_crossref < 0)
  panic("mount cross refs -ve");

 if ((mp != dp->v_mountedhere) && (mp->mnt_crossref == 0)) {

  if (need_put)
   vnode_put_locked(dp);
  vnode_unlock(dp);

  mount_lock_destroy(mp);



  FREE_ZONE((caddr_t)mp, sizeof (struct mount), M_MOUNT);
  return;
 }
 if (need_put)
  vnode_put_locked(dp);
 vnode_unlock(dp);
}
