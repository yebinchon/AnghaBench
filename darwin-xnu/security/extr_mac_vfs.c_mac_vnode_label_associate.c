
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_tag; } ;
struct mount {int dummy; } ;
struct fdescnode {int dummy; } ;
struct devnode {int dummy; } ;


 struct devnode* VTODN (struct vnode*) ;
 struct fdescnode* VTOFDESC (struct vnode*) ;


 int mac_vnode_enforce ;
 int mac_vnode_label_associate_devfs (struct mount*,struct devnode*,struct vnode*) ;
 int mac_vnode_label_associate_extattr (struct mount*,struct vnode*) ;
 int mac_vnode_label_associate_fdesc (struct mount*,struct fdescnode*,struct vnode*,int ) ;

int
mac_vnode_label_associate(struct mount *mp, struct vnode *vp, vfs_context_t ctx)
{
 struct devnode *dnp;
 struct fdescnode *fnp;
 int error = 0;
 switch (vp->v_tag) {
 case 129:
  dnp = VTODN(vp);
  mac_vnode_label_associate_devfs(mp, dnp, vp);
  break;
 case 128:
  fnp = VTOFDESC(vp);
  error = mac_vnode_label_associate_fdesc(mp, fnp, vp, ctx);
  break;
 default:
  error = mac_vnode_label_associate_extattr(mp, vp);
  break;
 }

 return (error);
}
