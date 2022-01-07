
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int v_flag; } ;


 int VSHARED_DYLD ;

int
vnode_isdyldsharedcache(vnode_t vp)
{
 return ((vp->v_flag & VSHARED_DYLD) ? 1 : 0);
}
