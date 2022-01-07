
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int dummy; } ;
struct devnode {int dn_label; } ;


 int MAC_PERFORM (int ,struct mount*,struct devnode*,int ,struct vnode*,int ) ;
 int devfs_label_update ;
 int mac_device_enforce ;

void
mac_devfs_label_update(struct mount *mp, struct devnode *de,
    struct vnode *vp)
{






 MAC_PERFORM(devfs_label_update, mp, de, de->dn_label, vp,
     vp->v_label);
}
