
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int v_lflag; int v_type; int * v_data; int v_tag; int v_op; int * v_mount; } ;


 int VBAD ;
 int VL_DEAD ;
 int VT_NON ;
 int dead_vnodeop_p ;

__attribute__((used)) static inline void
vn_set_dead(vnode_t vp)
{
 vp->v_mount = ((void*)0);
 vp->v_op = dead_vnodeop_p;
 vp->v_tag = VT_NON;
 vp->v_data = ((void*)0);
 vp->v_type = VBAD;
 vp->v_lflag |= VL_DEAD;
}
