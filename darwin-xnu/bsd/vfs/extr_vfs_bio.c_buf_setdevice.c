
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int errno_t ;
typedef TYPE_2__* buf_t ;
struct TYPE_6__ {int b_dev; } ;
struct TYPE_5__ {scalar_t__ v_type; int v_rdev; } ;


 int EINVAL ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;

errno_t
buf_setdevice(buf_t bp, vnode_t vp) {

        if ((vp->v_type != VBLK) && (vp->v_type != VCHR))
         return EINVAL;
 bp->b_dev = vp->v_rdev;

 return 0;
}
