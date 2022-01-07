
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vnode_getalways (int ) ;
 int vnode_put (int ) ;
 int vnode_rele (int ) ;

__attribute__((used)) static void
vnode_get_and_drop_always(vnode_t vp)
{
 vnode_getalways(vp);
 vnode_rele(vp);
 vnode_put(vp);
}
