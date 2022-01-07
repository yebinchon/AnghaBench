
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct vfsstatfs {int dummy; } ;
struct TYPE_5__ {TYPE_1__* v_mount; } ;
struct TYPE_4__ {struct vfsstatfs mnt_vfsstat; } ;



struct vfsstatfs *
vnode_vfsstatfs(vnode_t vp)
{
        return(&vp->v_mount->mnt_vfsstat);
}
