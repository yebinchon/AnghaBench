
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int uint32_t ;
struct TYPE_8__ {int v_iocount; scalar_t__ v_usecount; int v_lflag; int * v_data; } ;


 TYPE_1__* NULLVP ;
 int VL_DEAD ;
 int VNASSERT (int,TYPE_1__*,char*) ;
 int panic (char*) ;
 int vnode_create_internal (int ,int ,void*,TYPE_1__**,int) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
vnode_initialize(uint32_t flavor, uint32_t size, void *data, vnode_t *vpp)
{
 if (*vpp == NULLVP) {
  panic("NULL vnode passed to vnode_initialize");
 }
 return (vnode_create_internal(flavor, size, data, vpp, 1));
}
