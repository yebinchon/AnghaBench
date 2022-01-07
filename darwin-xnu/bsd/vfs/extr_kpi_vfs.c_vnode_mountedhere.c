
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef TYPE_2__* mount_t ;
struct TYPE_6__ {TYPE_1__* mnt_vnodecovered; } ;
struct TYPE_5__ {scalar_t__ v_type; TYPE_2__* v_mountedhere; } ;


 scalar_t__ VDIR ;

mount_t
vnode_mountedhere(vnode_t vp)
{
 mount_t mp;

 if ((vp->v_type == VDIR) && ((mp = vp->v_mountedhere) != ((void*)0)) &&
     (mp->mnt_vnodecovered == vp))
  return (mp);
 else
  return (mount_t)((void*)0);
}
