
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct vnode_attr {int va_vaflags; } ;
struct TYPE_14__ {int cn_flags; int cn_hash; int cn_namelen; int cn_nameptr; } ;
struct nameidata {int ni_flag; scalar_t__ ni_dvp; TYPE_11__ ni_cnd; TYPE_1__* ni_vp; } ;
typedef int boolean_t ;
struct TYPE_15__ {scalar_t__ v_parent; int * v_name; } ;


 int CN_WANTSRSRCFORK ;
 int COMPOUND_OPEN_STATUS_DID_CREATE ;
 int EKEEPLOOKING ;
 int FALSE ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_CREATE_FILE ;
 int NAMEI_CONTLOOKUP ;
 scalar_t__ NULLVP ;
 int O_EXCL ;
 int TRUE ;
 int VATTR_SET (struct vnode_attr*,int ,int ) ;
 int VA_EXCLUSIVE ;
 int VNODE_UPDATE_NAME ;
 int VNODE_UPDATE_PARENT ;
 int VN_CREATE_DOOPEN ;
 int VREG ;
 int XATTR_RESOURCEFORK_NAME ;
 int add_fsevent (int ,int ,int ,TYPE_1__*,int ) ;
 scalar_t__ need_fsevent (int ,TYPE_1__*) ;
 int panic (char*) ;
 int va_type ;
 int vn_authorize_create (TYPE_1__*,TYPE_11__*,struct vnode_attr*,int ,int *) ;
 int vn_create (TYPE_1__*,TYPE_1__**,struct nameidata*,struct vnode_attr*,int ,int,int*,int ) ;
 int vnode_compound_open_available (TYPE_1__*) ;
 int vnode_makenamedstream (TYPE_1__*,TYPE_1__**,int ,int ,int ) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_update_identity (TYPE_1__*,TYPE_1__*,int ,int ,int ,int) ;

__attribute__((used)) static int
vn_open_auth_do_create(struct nameidata *ndp, struct vnode_attr *vap, int fmode, boolean_t *did_create, boolean_t *did_open, vfs_context_t ctx)
{
 uint32_t status = 0;
 vnode_t dvp = ndp->ni_dvp;
 int batched;
 int error;
 vnode_t vp;

 batched = vnode_compound_open_available(ndp->ni_dvp);
 *did_open = FALSE;

 VATTR_SET(vap, va_type, VREG);
 if (fmode & O_EXCL)
  vap->va_vaflags |= VA_EXCLUSIVE;
  if (!batched) {
   if ((error = vn_authorize_create(dvp, &ndp->ni_cnd, vap, ctx, ((void*)0))) != 0)
    goto out;
  }

  error = vn_create(dvp, &ndp->ni_vp, ndp, vap, VN_CREATE_DOOPEN, fmode, &status, ctx);
  if (error != 0) {
   if (batched) {
    *did_create = (status & COMPOUND_OPEN_STATUS_DID_CREATE) ? TRUE : FALSE;
   } else {
    *did_create = FALSE;
   }

   if (error == EKEEPLOOKING) {
    if (*did_create) {
     panic("EKEEPLOOKING, but we did a create?");
    }
    if (!batched) {
     panic("EKEEPLOOKING from filesystem that doesn't support compound vnops?");
    }
    if ((ndp->ni_flag & NAMEI_CONTLOOKUP) == 0) {
     panic("EKEEPLOOKING, but continue flag not set?");
    }




    return error;
   }
  } else {
   if (batched) {
    *did_create = (status & COMPOUND_OPEN_STATUS_DID_CREATE) ? 1 : 0;
    *did_open = TRUE;
   } else {
    *did_create = TRUE;
   }
  }




 vp = ndp->ni_vp;

 if (*did_create) {
  int update_flags = 0;


  if (vp->v_name == ((void*)0))
   update_flags |= VNODE_UPDATE_NAME;
  if (vp->v_parent == NULLVP)
   update_flags |= VNODE_UPDATE_PARENT;

  if (update_flags)
   vnode_update_identity(vp, dvp, ndp->ni_cnd.cn_nameptr, ndp->ni_cnd.cn_namelen, ndp->ni_cnd.cn_hash, update_flags);

  vnode_put(dvp);
  ndp->ni_dvp = NULLVP;
 }
out:
 if (ndp->ni_dvp != NULLVP) {
  vnode_put(dvp);
  ndp->ni_dvp = NULLVP;
 }

 return error;
}
