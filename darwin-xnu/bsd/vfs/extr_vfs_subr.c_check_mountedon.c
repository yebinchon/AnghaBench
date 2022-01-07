
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
typedef scalar_t__ dev_t ;
struct TYPE_8__ {scalar_t__ v_rdev; int v_type; int v_id; scalar_t__ v_usecount; int v_iocount; struct TYPE_8__* v_specnext; } ;


 size_t SPECHASH (scalar_t__) ;
 int SPECHASH_LOCK () ;
 int SPECHASH_UNLOCK () ;
 TYPE_1__** speclisth ;
 int vfs_mountedon (TYPE_1__*) ;
 scalar_t__ vnode_getwithvid (TYPE_1__*,int) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
check_mountedon(dev_t dev, enum vtype type, int *errorp)
{
 vnode_t vp;
 int rc = 0;
 int vid;

loop:
 SPECHASH_LOCK();
 for (vp = speclisth[SPECHASH(dev)]; vp; vp = vp->v_specnext) {
  if (dev != vp->v_rdev || type != vp->v_type)
   continue;
  vid = vp->v_id;
  SPECHASH_UNLOCK();
  if (vnode_getwithvid(vp,vid))
   goto loop;
  vnode_lock_spin(vp);
  if ((vp->v_usecount > 0) || (vp->v_iocount > 1)) {
   vnode_unlock(vp);
   if ((*errorp = vfs_mountedon(vp)) != 0)
    rc = 1;
  } else
   vnode_unlock(vp);
  vnode_put(vp);
  return(rc);
 }
 SPECHASH_UNLOCK();
 return (0);
}
