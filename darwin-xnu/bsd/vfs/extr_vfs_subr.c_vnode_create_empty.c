
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int NULLVP ;
 int VCREATESIZE ;
 int VNCREATE_FLAVOR ;
 int vnode_create_internal (int ,int ,int *,int *,int ) ;

int
vnode_create_empty(vnode_t *vpp)
{
 *vpp = NULLVP;
 return (vnode_create_internal(VNCREATE_FLAVOR, VCREATESIZE, ((void*)0),
     vpp, 0));
}
