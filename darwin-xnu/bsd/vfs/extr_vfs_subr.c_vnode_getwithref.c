
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vget_internal (int ,int ,int ) ;

int
vnode_getwithref(vnode_t vp)
{
        return(vget_internal(vp, 0, 0));
}
