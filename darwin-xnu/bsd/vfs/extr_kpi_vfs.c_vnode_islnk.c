
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {scalar_t__ v_type; } ;


 scalar_t__ VLNK ;

int
vnode_islnk(vnode_t vp)
{
 return ((vp->v_type == VLNK)? 1 : 0);
}
