
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int uint32_t ;
struct TYPE_10__ {int v_lflag; int v_flag; TYPE_1__* v_mount; } ;
struct TYPE_9__ {int mnt_kern_flag; } ;


 int MNTK_NAMED_STREAMS ;
 int VISNAMEDSTREAM ;
 int VISSHADOW ;
 int VL_HASSTREAMS ;
 int VNODE_UPDATE_NAMEDSTREAM_PARENT ;
 int vnode_lock_spin (TYPE_2__*) ;
 int vnode_unlock (TYPE_2__*) ;
 int vnode_update_identity (TYPE_2__*,TYPE_2__*,int *,int ,int ,int ) ;

__attribute__((used)) static void
vnode_setasnamedstream_internal(vnode_t vp, vnode_t svp)
{
 uint32_t streamflags = VISNAMEDSTREAM;

 if ((vp->v_mount->mnt_kern_flag & MNTK_NAMED_STREAMS) == 0) {
  streamflags |= VISSHADOW;
 }


 vnode_lock_spin(svp);
 svp->v_flag |= streamflags;
 vnode_unlock(svp);


 vnode_lock_spin(vp);
 vp->v_lflag |= VL_HASSTREAMS;
 vnode_unlock(vp);
 vnode_update_identity(svp, vp, ((void*)0), 0, 0, VNODE_UPDATE_NAMEDSTREAM_PARENT);

 return;
}
