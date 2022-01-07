
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mount_t ;
struct TYPE_5__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_4__ {int vfc_vfsflags; } ;


 int VFC_VFS64BITREADY ;

int
vfs_64bitready(mount_t mp)
{
 if ((mp->mnt_vtable->vfc_vfsflags & VFC_VFS64BITREADY))
  return(1);
 else
  return(0);
}
