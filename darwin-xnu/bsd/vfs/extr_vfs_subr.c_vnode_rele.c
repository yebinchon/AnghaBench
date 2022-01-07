
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vnode_rele_internal (int ,int ,int ,int ) ;

void
vnode_rele(vnode_t vp)
{
        vnode_rele_internal(vp, 0, 0, 0);
}
