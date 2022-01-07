
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int * mnt_mntlabel; } ;
struct devnode {int dn_label; } ;


 int MAC_PERFORM (int ,struct mount*,int *,struct devnode*,int ,struct vnode*,int ) ;
 int mac_device_enforce ;
 int vnode_label_associate_devfs ;

void
mac_vnode_label_associate_devfs(struct mount *mp, struct devnode *de,
    struct vnode *vp)
{






 MAC_PERFORM(vnode_label_associate_devfs,
     mp, mp ? mp->mnt_mntlabel : ((void*)0),
     de, de->dn_label,
     vp, vp->v_label);
}
