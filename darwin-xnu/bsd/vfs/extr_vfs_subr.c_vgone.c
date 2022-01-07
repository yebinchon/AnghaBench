
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
struct vnode {scalar_t__ v_type; int v_specflags; scalar_t__ v_rdev; struct specinfo* v_specinfo; struct vnode* v_specnext; struct vnode** v_hashchain; } ;
struct specinfo {int dummy; } ;


 int DOCLOSE ;
 int FREE_ZONE (void*,int,int ) ;
 int M_SPECINFO ;
 int SI_ALIASED ;
 int SPECHASH_LOCK () ;
 int SPECHASH_UNLOCK () ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int panic (char*) ;
 int vclean (struct vnode*,int) ;

__attribute__((used)) static void
vgone(vnode_t vp, int flags)
{
 struct vnode *vq;
 struct vnode *vx;






 vclean(vp, flags | DOCLOSE);





 if ((vp->v_type == VBLK || vp->v_type == VCHR) && vp->v_specinfo != 0) {
   SPECHASH_LOCK();
   if (*vp->v_hashchain == vp) {
    *vp->v_hashchain = vp->v_specnext;
   } else {
    for (vq = *vp->v_hashchain; vq; vq = vq->v_specnext) {
     if (vq->v_specnext != vp)
      continue;
     vq->v_specnext = vp->v_specnext;
     break;
    }
   if (vq == ((void*)0))
    panic("missing bdev");
   }
   if (vp->v_specflags & SI_ALIASED) {
    vx = ((void*)0);
    for (vq = *vp->v_hashchain; vq; vq = vq->v_specnext) {
     if (vq->v_rdev != vp->v_rdev ||
         vq->v_type != vp->v_type)
      continue;
     if (vx)
      break;
     vx = vq;
    }
    if (vx == ((void*)0))
     panic("missing alias");
    if (vq == ((void*)0))
     vx->v_specflags &= ~SI_ALIASED;
    vp->v_specflags &= ~SI_ALIASED;
   }
   SPECHASH_UNLOCK();
   {
   struct specinfo *tmp = vp->v_specinfo;
   vp->v_specinfo = ((void*)0);
   FREE_ZONE((void *)tmp, sizeof(struct specinfo), M_SPECINFO);
   }
 }
}
