
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct TYPE_5__ {TYPE_1__* v_mount; } ;
struct TYPE_4__ {int mnt_flag; } ;


 int MNT_RDONLY ;

int
vnode_vfsisrdonly(vnode_t vp)
{
 return ((vp->v_mount->mnt_flag & MNT_RDONLY)? 1 : 0);
}
