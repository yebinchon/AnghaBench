
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_lookup_args {struct vnode** a_vpp; int a_context; struct vnode* a_dvp; struct componentname* a_cnp; } ;
struct vnode {int dummy; } ;
struct null_mount {int nullm_flags; struct vnode* nullm_lowerrootvp; struct vnode* nullm_thirdcovervp; int nullm_lowerrootvid; struct vnode* nullm_rootvp; struct vnode* nullm_secondvp; } ;
struct mount {int dummy; } ;
struct componentname {char* cn_nameptr; int cn_namelen; } ;


 int ENOENT ;
 struct null_mount* MOUNTTONULLMOUNT (struct mount*) ;
 int NULLM_CASEINSENSITIVE ;
 int VNOP_LOOKUP (struct vnode*,struct vnode**,struct componentname*,int ) ;
 int null_get_lowerparent (struct vnode*,struct vnode**,int ) ;
 int null_getnewvnode (struct mount*,int *,struct vnode*,struct vnode**,struct componentname*,int ) ;
 int null_nodeget (struct mount*,struct vnode*,struct vnode*,struct vnode**,struct componentname*,int ) ;
 int vnode_get (struct vnode*) ;
 int vnode_getwithvid (struct vnode*,int ) ;
 struct mount* vnode_mount (struct vnode*) ;
 int vnode_put (struct vnode*) ;

__attribute__((used)) static int
null_special_lookup(struct vnop_lookup_args * ap)
{
 struct componentname * cnp = ap->a_cnp;
 struct vnode * dvp = ap->a_dvp;
 struct vnode * ldvp = ((void*)0);
 struct vnode * lvp = ((void*)0);
 struct vnode * vp = ((void*)0);
 struct mount * mp = vnode_mount(dvp);
 struct null_mount * null_mp = MOUNTTONULLMOUNT(mp);
 int error = ENOENT;

 if (dvp == null_mp->nullm_rootvp) {

  if (cnp->cn_nameptr[0] == '.') {
   if (cnp->cn_namelen == 1 || (cnp->cn_namelen == 2 && cnp->cn_nameptr[1] == '.')) {

    vp = dvp;
    error = vnode_get(vp);
    goto end;
   }
  }



  if (cnp->cn_namelen == 1 &&
      (cnp->cn_nameptr[0] == 'd' || (null_mp->nullm_flags & NULLM_CASEINSENSITIVE ? cnp->cn_nameptr[0] == 'D' : 0))) {
   error = 0;
   if (null_mp->nullm_secondvp == ((void*)0)) {
    error = null_getnewvnode(mp, ((void*)0), dvp, &vp, cnp, 0);
    if (error) {
     goto end;
    }

    null_mp->nullm_secondvp = vp;
   } else {
    vp = null_mp->nullm_secondvp;
    error = vnode_get(vp);
   }
  }

 } else if (dvp == null_mp->nullm_secondvp) {

  if (cnp->cn_nameptr[0] == '.') {
   if (cnp->cn_namelen == 1) {
    vp = dvp;
    error = vnode_get(vp);
    goto end;
   } else if (cnp->cn_namelen == 2 && cnp->cn_nameptr[1] == '.') {

    vp = null_mp->nullm_rootvp;
    error = vnode_get(vp);
    goto end;
   }
  }




  error = vnode_getwithvid(null_mp->nullm_lowerrootvp, null_mp->nullm_lowerrootvid);
  if (error) {
   goto end;
  }
  error = null_get_lowerparent(null_mp->nullm_lowerrootvp, &ldvp, ap->a_context);

  if (error == 0) {
   error = VNOP_LOOKUP(ldvp, &lvp, cnp, ap->a_context);
   vnode_put(ldvp);

   if (error == 0) {
    if (lvp == null_mp->nullm_lowerrootvp) {


     error = null_nodeget(mp, lvp, dvp, &vp, cnp, 0);

     if (error == 0 && null_mp->nullm_thirdcovervp == ((void*)0)) {

      null_mp->nullm_thirdcovervp = vp;
     }
    } else {
     error = ENOENT;
    }
    vnode_put(lvp);
   }
  }
  vnode_put(null_mp->nullm_lowerrootvp);
 }

end:
 if (error == 0) {
  *ap->a_vpp = vp;
 }
 return error;
}
