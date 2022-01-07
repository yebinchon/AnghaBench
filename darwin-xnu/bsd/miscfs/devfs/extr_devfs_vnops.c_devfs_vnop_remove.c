
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vnop_remove_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct componentname {char* cn_nameptr; int cn_namelen; int cn_flags; } ;
struct TYPE_5__ {scalar_t__ dn_type; int dn_links; } ;
typedef TYPE_1__ devnode_t ;
typedef int devdirent_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int DEVFS_UPDATE_CHANGE ;
 int DEVFS_UPDATE_MOD ;
 scalar_t__ DEV_DIR ;
 int EINVAL ;
 int ENOENT ;
 int ENOTEMPTY ;
 int ISDOTDOT ;
 TYPE_1__* VTODN (struct vnode*) ;
 int * dev_findname (TYPE_1__*,char*) ;
 int dev_free_name (int *) ;
 int devfs_consider_time_update (TYPE_1__*,int) ;
 scalar_t__ devfs_is_name_protected (struct vnode*,char*) ;

__attribute__((used)) static int
devfs_vnop_remove(struct vnop_remove_args *ap)





{
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 devnode_t * tp;
 devnode_t * tdp;
 devdirent_t * tnp;
 int doingdirectory = 0;
 int error = 0;







 DEVFS_LOCK();

 tp = VTODN(vp);
 tdp = VTODN(dvp);


 tnp = dev_findname(tdp, cnp->cn_nameptr);

 if (tnp == ((void*)0)) {
         error = ENOENT;
  goto abort;
 }




 if (devfs_is_name_protected(dvp, cnp->cn_nameptr)) {
  error = EINVAL;
  goto abort;
}




 if ((tp->dn_type) == DEV_DIR) {



  if ( (cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.')
      || (cnp->cn_flags&ISDOTDOT) ) {
   error = EINVAL;
   goto abort;
  }
  doingdirectory++;
 }




 devfs_consider_time_update(tdp, DEVFS_UPDATE_CHANGE | DEVFS_UPDATE_MOD);






 if (( doingdirectory) && (tp->dn_links > 2)) {
     error = ENOTEMPTY;
     goto abort;
 }
 dev_free_name(tnp);
abort:
 DEVFS_UNLOCK();

 return (error);
}
