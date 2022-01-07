
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct TYPE_7__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_6__ {TYPE_4__* v_mount; } ;
struct TYPE_5__ {int vfc_vfsflags; } ;


 int VFC_VFS64BITREADY ;
 TYPE_4__* dead_mountp ;

int
vnode_vfs64bitready(vnode_t vp)
{




 if ((vp->v_mount != dead_mountp) && (vp->v_mount->mnt_vtable->vfc_vfsflags & VFC_VFS64BITREADY))
  return(1);
 else
  return(0);
}
