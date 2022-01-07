
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int mnt_mntlabel; } ;


 int MAC_PERFORM (int ,struct mount*,int ,struct vnode*,int ,char const*) ;
 int mac_label_vnodes ;
 int mac_vnode_enforce ;
 int vnode_label_update_extattr ;
 int vnode_lock (struct vnode*) ;
 int vnode_relabel (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

void
mac_vnode_label_update_extattr(struct mount *mp, struct vnode *vp,
    const char *name)
{
 int error = 0;






 if (!mac_label_vnodes)
  return;

 MAC_PERFORM(vnode_label_update_extattr, mp, mp->mnt_mntlabel, vp,
      vp->v_label, name);
 if (error == 0)
  return;

 vnode_lock(vp);
 vnode_relabel(vp);
 vnode_unlock(vp);
 return;
}
