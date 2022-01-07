
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uint32_t ;


 int NULLVP ;
 int vnode_create_internal (int ,int ,void*,int *,int) ;

int
vnode_create(uint32_t flavor, uint32_t size, void *data, vnode_t *vpp)
{
 *vpp = NULLVP;
 return (vnode_create_internal(flavor, size, data, vpp, 1));
}
