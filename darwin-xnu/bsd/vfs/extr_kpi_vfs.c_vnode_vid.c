
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ v_id; } ;



uint32_t
vnode_vid(vnode_t vp)
{
 return ((uint32_t)(vp->v_id));
}
