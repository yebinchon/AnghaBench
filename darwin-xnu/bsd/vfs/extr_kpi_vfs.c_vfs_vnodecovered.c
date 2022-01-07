
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vnode_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int * mnt_vnodecovered; } ;


 scalar_t__ vnode_getwithref (int *) ;

vnode_t
vfs_vnodecovered(mount_t mp)
{
 vnode_t vp = mp->mnt_vnodecovered;
 if ((vp == ((void*)0)) || (vnode_getwithref(vp) != 0)) {
  return ((void*)0);
 } else {
  return vp;
 }
}
