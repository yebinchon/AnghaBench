
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int COMPOUND_VNOP_OPEN ;
 int vnode_compound_op_available (int ,int ) ;

int
vnode_compound_open_available(vnode_t vp)
{
 return vnode_compound_op_available(vp, COMPOUND_VNOP_OPEN);
}
