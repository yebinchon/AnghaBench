
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int errno_t ;
struct TYPE_8__ {TYPE_1__* v_mount; } ;
struct TYPE_7__ {int mnt_kern_flag; } ;


 int EINVAL ;
 int MNTK_NAMED_STREAMS ;
 int vnode_setasnamedstream_internal (TYPE_2__*,TYPE_2__*) ;

errno_t
vnode_setasnamedstream(vnode_t vp, vnode_t svp)
{
 if ((vp->v_mount->mnt_kern_flag & MNTK_NAMED_STREAMS) == 0)
  return (EINVAL);

 vnode_setasnamedstream_internal(vp, svp);
 return (0);
}
