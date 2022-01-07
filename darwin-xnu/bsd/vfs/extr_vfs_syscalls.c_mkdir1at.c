
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {int va_mode; } ;
struct TYPE_12__ {int cn_hash; int cn_namelen; int cn_nameptr; int cn_flags; } ;
struct nameidata {TYPE_9__ ni_cnd; TYPE_1__* ni_vp; TYPE_1__* ni_dvp; int ni_flag; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_11__ {scalar_t__ v_parent; int * v_name; } ;


 int AUDITVNPATH1 ;
 int AUDIT_ARG (int ,int ) ;
 int CREATE ;
 int EACCES ;
 int EEXIST ;
 int EKEEPLOOKING ;
 int EPERM ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_CREATE_DIR ;
 int LOCKPARENT ;
 int LOOKUP ;
 int NAMEI_COMPOUNDMKDIR ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 scalar_t__ NULLVP ;
 int OP_MKDIR ;
 int VATTR_SET (struct vnode_attr*,int ,int ) ;
 int VDIR ;
 int VNODE_UPDATE_NAME ;
 int VNODE_UPDATE_PARENT ;
 int WILLBEDIR ;
 int add_fsevent (int ,int ,int ,TYPE_1__*,int ) ;
 int mode ;
 int nameiat (struct nameidata*,int) ;
 int nameidone (struct nameidata*) ;
 int va_type ;
 int vn_authorize_mkdir (TYPE_1__*,TYPE_9__*,struct vnode_attr*,int ,int *) ;
 int vn_create (TYPE_1__*,TYPE_1__**,struct nameidata*,struct vnode_attr*,int ,int ,int *,int ) ;
 int vnode_compound_mkdir_available (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_update_identity (TYPE_1__*,TYPE_1__*,int ,int ,int ,int) ;

__attribute__((used)) static int
mkdir1at(vfs_context_t ctx, user_addr_t path, struct vnode_attr *vap, int fd,
    enum uio_seg segflg)
{
 vnode_t vp, dvp;
 int error;
 int update_flags = 0;
 int batched;
 struct nameidata nd;

 AUDIT_ARG(mode, vap->va_mode);
 NDINIT(&nd, CREATE, OP_MKDIR, LOCKPARENT | AUDITVNPATH1, segflg,
        path, ctx);
 nd.ni_cnd.cn_flags |= WILLBEDIR;
 nd.ni_flag = NAMEI_COMPOUNDMKDIR;

continue_lookup:
 error = nameiat(&nd, fd);
 if (error)
  return (error);
 dvp = nd.ni_dvp;
 vp = nd.ni_vp;

 if (vp != ((void*)0)) {
  error = EEXIST;
  goto out;
 }

 batched = vnode_compound_mkdir_available(dvp);

 VATTR_SET(vap, va_type, VDIR);
 if ((error = vn_authorize_mkdir(dvp, &nd.ni_cnd, vap, ctx, ((void*)0))) != 0) {
  if (error == EACCES || error == EPERM) {
   int error2;

   nameidone(&nd);
   vnode_put(dvp);
   dvp = NULLVP;





   NDINIT(&nd, LOOKUP, OP_MKDIR, AUDITVNPATH1, segflg,
            path, ctx);
   error2 = nameiat(&nd, fd);
   if (error2) {
    goto out;
   } else {
    vp = nd.ni_vp;
    error = EEXIST;
    goto out;
   }
  }

  goto out;
 }




 if ((error = vn_create(dvp, &vp, &nd, vap, 0, 0, ((void*)0), ctx)) != 0) {
  if (error == EKEEPLOOKING) {
   nd.ni_vp = vp;
   goto continue_lookup;
  }

  goto out;
 }


 if (vp->v_name == ((void*)0))
         update_flags |= VNODE_UPDATE_NAME;
 if (vp->v_parent == NULLVP)
         update_flags |= VNODE_UPDATE_PARENT;

 if (update_flags)
         vnode_update_identity(vp, dvp, nd.ni_cnd.cn_nameptr, nd.ni_cnd.cn_namelen, nd.ni_cnd.cn_hash, update_flags);





out:




 nameidone(&nd);

 if (vp)
  vnode_put(vp);
 if (dvp)
  vnode_put(dvp);

 return (error);
}
