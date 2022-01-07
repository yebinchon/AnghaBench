
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vnode_rele_internal (int ,int,int,int ) ;

void
vnode_rele_ext(vnode_t vp, int fmode, int dont_reenter)
{
        vnode_rele_internal(vp, fmode, dont_reenter, 0);
}
