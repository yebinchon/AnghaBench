
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_mount; } ;
struct componentname {scalar_t__ cn_namelen; int cn_nameptr; } ;
typedef int devnode_t ;
typedef int devdirent_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int DEVFS_UPDATE_CHANGE ;
 scalar_t__ DEVMAXNAMESIZE ;
 int ENAMETOOLONG ;
 int EXDEV ;
 int * VTODN (struct vnode*) ;
 int dev_add_name (int ,int *,int *,int *,int **) ;
 int dn_times_now (int *,int ) ;

__attribute__((used)) static int
devfs_link(struct vnop_link_args *ap)






{
 struct vnode *vp = ap->a_vp;
 struct vnode *tdvp = ap->a_tdvp;
 struct componentname *cnp = ap->a_cnp;
 devnode_t * fp;
 devnode_t * tdp;
 devdirent_t * tnp;
 int error = 0;




 if (cnp->cn_namelen > DEVMAXNAMESIZE) {
  error = ENAMETOOLONG;
  goto out1;
 }
 tdp = VTODN(tdvp);

 if (tdvp->v_mount != vp->v_mount) {
  return (EXDEV);
 }
 DEVFS_LOCK();

 fp = VTODN(vp);




 dn_times_now(fp, DEVFS_UPDATE_CHANGE);

 if (!error) {
     error = dev_add_name(cnp->cn_nameptr, tdp, ((void*)0), fp, &tnp);
 }
out1:
 DEVFS_UNLOCK();

 return (error);
}
