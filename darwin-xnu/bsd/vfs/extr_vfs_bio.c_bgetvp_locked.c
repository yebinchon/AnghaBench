
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef TYPE_2__* buf_t ;
struct TYPE_7__ {int b_dev; TYPE_1__* b_vp; } ;
struct TYPE_6__ {scalar_t__ v_type; int v_cleanblkhd; int v_rdev; } ;


 int NODEV ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int bufinsvn (TYPE_2__*,int *) ;
 int panic (char*) ;

__attribute__((used)) static void
bgetvp_locked(vnode_t vp, buf_t bp)
{

 if (bp->b_vp != vp)
  panic("bgetvp_locked: not free");

 if (vp->v_type == VBLK || vp->v_type == VCHR)
  bp->b_dev = vp->v_rdev;
 else
  bp->b_dev = NODEV;



 bufinsvn(bp, &vp->v_cleanblkhd);
}
