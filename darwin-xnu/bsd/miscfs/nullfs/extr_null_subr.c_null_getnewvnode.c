
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_fsparam {int vnfs_vtype; char* vnfs_str; int vnfs_markroot; int vnfs_flags; struct componentname* vnfs_cnp; scalar_t__ vnfs_filesize; scalar_t__ vnfs_rdev; scalar_t__ vnfs_marksystem; int vnfs_vops; void* vnfs_fsnode; struct vnode* vnfs_dvp; struct mount* vnfs_mp; } ;
struct vnode {int dummy; } ;
struct null_node {int null_myvid; struct vnode* null_vnode; } ;
struct mount {int dummy; } ;
struct componentname {int dummy; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int ENOMEM ;
 int FREE (struct null_node*,int ) ;
 int M_TEMP ;
 int VCREATESIZE ;
 int VDIR ;
 int VNCREATE_FLAVOR ;
 int VNFS_ADDFSREF ;
 int VT_NULL ;
 struct null_node* null_nodecreate (struct vnode*) ;
 int nullfs_vnodeop_p ;
 int vnode_create (int ,int ,struct vnode_fsparam*,struct vnode**) ;
 int vnode_settag (struct vnode*,int ) ;
 int vnode_vid (struct vnode*) ;
 int vnode_vtype (struct vnode*) ;

int
null_getnewvnode(
    struct mount * mp, struct vnode * lowervp, struct vnode * dvp, struct vnode ** vpp, struct componentname * cnp, int root)
{
 struct vnode_fsparam vnfs_param;
 int error = 0;
 enum vtype type = VDIR;
 struct null_node * xp = null_nodecreate(lowervp);

 if (xp == ((void*)0)) {
  return ENOMEM;
 }

 if (lowervp) {
  type = vnode_vtype(lowervp);
 }

 vnfs_param.vnfs_mp = mp;
 vnfs_param.vnfs_vtype = type;
 vnfs_param.vnfs_str = "nullfs";
 vnfs_param.vnfs_dvp = dvp;
 vnfs_param.vnfs_fsnode = (void *)xp;
 vnfs_param.vnfs_vops = nullfs_vnodeop_p;
 vnfs_param.vnfs_markroot = root;
 vnfs_param.vnfs_marksystem = 0;
 vnfs_param.vnfs_rdev = 0;
 vnfs_param.vnfs_filesize = 0;
 vnfs_param.vnfs_cnp = cnp;
 vnfs_param.vnfs_flags = VNFS_ADDFSREF;

 error = vnode_create(VNCREATE_FLAVOR, VCREATESIZE, &vnfs_param, vpp);
 if (error == 0) {
  xp->null_vnode = *vpp;
  xp->null_myvid = vnode_vid(*vpp);
  vnode_settag(*vpp, VT_NULL);
 } else {
  FREE(xp, M_TEMP);
 }
 return error;
}
