
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int mnt_mntlabel; } ;


 int MAC_CHECK (int ,struct mount*,int ,struct vnode*,int ) ;
 int vnode_label_associate_extattr ;

int
mac_vnode_label_associate_extattr(struct mount *mp, struct vnode *vp)
{
 int error;

 MAC_CHECK(vnode_label_associate_extattr, mp, mp->mnt_mntlabel, vp,
     vp->v_label);

 return (error);
}
