
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct vnop_rename_args {struct componentname* a_fcnp; struct componentname* a_tcnp; struct vnode* a_fdvp; struct vnode* a_fvp; struct vnode* a_tdvp; struct vnode* a_tvp; } ;
struct vnode {scalar_t__ v_type; } ;
struct componentname {int cn_namelen; char* cn_nameptr; int cn_flags; } ;
struct TYPE_13__ {TYPE_3__* parent; } ;
struct TYPE_14__ {TYPE_1__ Dir; } ;
struct TYPE_15__ {scalar_t__ dn_type; int dn_links; TYPE_2__ dn_typeinfo; } ;
typedef TYPE_3__ devnode_t ;
struct TYPE_16__ {int * de_dnp; } ;
typedef TYPE_4__ devdirent_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int DEVFS_UPDATE_CHANGE ;
 int DEVMAXNAMESIZE ;
 scalar_t__ DEV_DIR ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOTEMPTY ;
 int ISDOTDOT ;
 scalar_t__ VDIR ;
 TYPE_3__* VTODN (struct vnode*) ;
 int dev_add_name (char*,TYPE_3__*,int *,TYPE_3__*,TYPE_4__**) ;
 TYPE_4__* dev_findname (TYPE_3__*,char*) ;
 int dev_free_name (TYPE_4__*) ;
 scalar_t__ devfs_is_name_protected (struct vnode*,char*) ;
 int dn_times_now (TYPE_3__*,int ) ;

__attribute__((used)) static int
devfs_rename(struct vnop_rename_args *ap)
{
 struct vnode *tvp = ap->a_tvp;
 struct vnode *tdvp = ap->a_tdvp;
 struct vnode *fvp = ap->a_fvp;
 struct vnode *fdvp = ap->a_fdvp;
 struct componentname *tcnp = ap->a_tcnp;
 struct componentname *fcnp = ap->a_fcnp;
 devnode_t *fp, *fdp, *tp, *tdp;
 devdirent_t *fnp,*tnp;
 int doingdirectory = 0;
 int error = 0;

 DEVFS_LOCK();



 if (tcnp->cn_namelen > DEVMAXNAMESIZE) {
  error = ENAMETOOLONG;
  goto out;
 }






 tdp = VTODN(tdvp);
 fdp = VTODN(fdvp);
 fp = VTODN(fvp);

 fnp = dev_findname(fdp, fcnp->cn_nameptr);

 if (fnp == ((void*)0)) {
         error = ENOENT;
  goto out;
 }
 tp = ((void*)0);
 tnp = ((void*)0);

 if (tvp) {
  tnp = dev_findname(tdp, tcnp->cn_nameptr);

  if (tnp == ((void*)0)) {
          error = ENOENT;
   goto out;
  }
  tp = VTODN(tvp);
 }




 if ((fp->dn_type) == DEV_DIR) {



  if ((fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.')
      || (fcnp->cn_flags&ISDOTDOT)
      || (tcnp->cn_namelen == 1 && tcnp->cn_nameptr[0] == '.')
      || (tcnp->cn_flags&ISDOTDOT)
      || (tdp == fp )) {
   error = EINVAL;
   goto out;
  }
  doingdirectory++;
 }




 if (devfs_is_name_protected(fdvp, fcnp->cn_nameptr) ||
     devfs_is_name_protected(tdvp, tcnp->cn_nameptr)) {
  error = EINVAL;
  goto out;
 }
 if (doingdirectory && (tdp != fdp)) {
  devnode_t * tmp, *ntmp;
  tmp = tdp;
  do {
   if(tmp == fp) {

    error = EINVAL;
    goto out;
   }
   ntmp = tmp;
  } while ((tmp = tmp->dn_typeinfo.Dir.parent) != ntmp);
 }




 dn_times_now(fp, DEVFS_UPDATE_CHANGE);




 if (fvp == tvp) {
  if (fvp->v_type == VDIR) {
   error = EINVAL;
   goto out;
  }

  dev_free_name(fnp);

  DEVFS_UNLOCK();
  return 0;
 }





 fp->dn_links++;




 if (tp) {





  if (( doingdirectory) && (tp->dn_links > 2)) {
          error = ENOTEMPTY;
   goto bad;
  }
  dev_free_name(tnp);
  tp = ((void*)0);
 }
 dev_add_name(tcnp->cn_nameptr,tdp,((void*)0),fp,&tnp);
 fnp->de_dnp = ((void*)0);
 fp->dn_links--;

 dev_free_name(fnp);
bad:
 fp->dn_links--;
out:
 DEVFS_UNLOCK();
 return (error);
}
