
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int * mnt_mntlabel; } ;


 int MAC_PERFORM (int ,struct mount*,int *,struct vnode*,int ) ;
 int mac_label_vnodes ;
 int mac_vnode_enforce ;
 int vnode_label_associate_singlelabel ;

void
mac_vnode_label_associate_singlelabel(struct mount *mp, struct vnode *vp)
{





 if (!mac_label_vnodes)
  return;

 MAC_PERFORM(vnode_label_associate_singlelabel, mp,
     mp ? mp->mnt_mntlabel : ((void*)0), vp, vp->v_label);
}
