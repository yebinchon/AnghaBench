
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {scalar_t__ mnt_devvp; } ;


 scalar_t__ NULLVP ;
 scalar_t__ vnode_get (scalar_t__) ;

vnode_t
vfs_devvp(mount_t mp)
{
 vnode_t vp = mp->mnt_devvp;

 if ((vp != NULLVP) && (vnode_get(vp) == 0)) {
  return vp;
 }

 return NULLVP;
}
