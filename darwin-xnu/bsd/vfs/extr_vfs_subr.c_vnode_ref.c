
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vnode_ref_ext (int ,int ,int ) ;

int
vnode_ref(vnode_t vp)
{

        return (vnode_ref_ext(vp, 0, 0));
}
