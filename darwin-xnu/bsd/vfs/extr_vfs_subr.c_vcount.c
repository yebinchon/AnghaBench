
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct TYPE_13__ {int v_usecount; int v_kusecount; int v_id; scalar_t__ v_rdev; scalar_t__ v_type; int v_iocount; struct TYPE_13__* v_specnext; TYPE_1__* v_specinfo; struct TYPE_13__** v_hashchain; } ;
struct TYPE_12__ {int si_opencount; } ;


 int SPECHASH_LOCK () ;
 int SPECHASH_UNLOCK () ;
 scalar_t__ vnode_getwithvid (TYPE_2__*,int) ;
 int vnode_isaliased (TYPE_2__*) ;
 int vnode_isspec (TYPE_2__*) ;
 int vnode_lock (TYPE_2__*) ;
 int vnode_put (TYPE_2__*) ;
 int vnode_put_locked (TYPE_2__*) ;
 int vnode_reclaim_internal (TYPE_2__*,int,int,int ) ;
 int vnode_unlock (TYPE_2__*) ;

int
vcount(vnode_t vp)
{
 vnode_t vq, vnext;
 int count;
 int vid;

 if (!vnode_isspec(vp)) {
  return (vp->v_usecount - vp->v_kusecount);
 }

loop:
 if (!vnode_isaliased(vp))
         return (vp->v_specinfo->si_opencount);
 count = 0;

 SPECHASH_LOCK();



 vq = *vp->v_hashchain;
 vid = vq ? vq->v_id : 0;

 SPECHASH_UNLOCK();

 while (vq) {



  if (vnode_getwithvid(vq, vid)) {
   goto loop;
  }
  vnode_lock(vq);

  if (vq->v_rdev == vp->v_rdev && vq->v_type == vp->v_type) {
   if ((vq->v_usecount == 0) && (vq->v_iocount == 1) && vq != vp) {



    vnode_reclaim_internal(vq, 1, 1, 0);
    vnode_put_locked(vq);
    vnode_unlock(vq);
    goto loop;
   }
   count += vq->v_specinfo->si_opencount;
  }
  vnode_unlock(vq);

  SPECHASH_LOCK();





  vnext = vq->v_specnext;
  vid = vnext ? vnext->v_id : 0;

  SPECHASH_UNLOCK();

  vnode_put(vq);

  vq = vnext;
 }

 return (count);
}
