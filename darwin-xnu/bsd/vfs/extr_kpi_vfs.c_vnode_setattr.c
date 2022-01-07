
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef scalar_t__ vfs_context_t ;
typedef int uint64_t ;
struct vnode_attr {int va_active; int va_flags; int va_supported; } ;
struct TYPE_11__ {int mnt_flag; } ;
struct TYPE_10__ {int v_flag; int v_type; TYPE_6__* v_mount; } ;


 int EINVAL ;
 int EISDIR ;
 int ENOTSUP ;
 int EPERM ;
 int EROFS ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_CHOWN ;
 int FSE_STAT_CHANGED ;
 int KAUTH_DEBUG (char*) ;
 int MNT_IGNORE_OWNERSHIP ;
 int PERMISSION_BITS ;
 int SF_SUPPORTED ;
 int UF_SETTABLE ;
 int VATTR_ALL_SUPPORTED (struct vnode_attr*) ;
 int VATTR_CLEAR_ACTIVE (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;

 int VISNAMEDSTREAM ;
 int VNODE_ATTR_ALL ;
 int VNODE_ATTR_BIT (int ) ;
 int VNODE_ATTR_RDONLY ;
 int VNODE_ATTR_va_data_size ;
 int VNOP_SETATTR (TYPE_1__*,struct vnode_attr*,scalar_t__) ;

 int add_fsevent (int ,scalar_t__,int ,TYPE_1__*,int ) ;
 scalar_t__ need_fsevent (int ,TYPE_1__*) ;
 int va_access_time ;
 int va_acl ;
 int va_backup_time ;
 int va_data_size ;
 int va_flags ;
 int va_gid ;
 int va_guuid ;
 int va_uid ;
 int va_uuuid ;
 scalar_t__ vfs_context_kernel () ;
 int vfs_extendedsecurity (int ) ;
 scalar_t__ vfs_isrdonly (TYPE_6__*) ;
 scalar_t__ vnode_isswap (TYPE_1__*) ;
 int vnode_mount (TYPE_1__*) ;
 int vnode_setattr_fallback (TYPE_1__*,struct vnode_attr*,scalar_t__) ;

int
vnode_setattr(vnode_t vp, struct vnode_attr *vap, vfs_context_t ctx)
{
 int error;
 if (vap->va_active & ~VNODE_ATTR_ALL)
  return (EINVAL);





 if (vfs_isrdonly(vp->v_mount)) {
  error = EROFS;
  goto out;
 }
 if (vnode_isswap(vp) && (ctx != vfs_context_kernel())) {
  error = EPERM;
  goto out;
 }
 if(VATTR_IS_ACTIVE(vap, va_data_size)) {
  switch(vp->v_type) {
  case 128:

   break;
  case 129:

   error = EISDIR;
   goto out;
  default:

   VATTR_CLEAR_ACTIVE(vap, va_data_size);
   if (vap->va_active)
    break;

   return (0);
  }
 }





 if (vp->v_mount->mnt_flag & MNT_IGNORE_OWNERSHIP) {
  VATTR_CLEAR_ACTIVE(vap, va_uid);
  VATTR_CLEAR_ACTIVE(vap, va_gid);
 }





 if (!vfs_extendedsecurity(vnode_mount(vp)) &&
     (VATTR_IS_ACTIVE(vap, va_acl) || VATTR_IS_ACTIVE(vap, va_uuuid) || VATTR_IS_ACTIVE(vap, va_guuid))) {
  KAUTH_DEBUG("SETATTR - returning ENOTSUP to request to set extended security");
  error = ENOTSUP;
  goto out;
 }


 if (VATTR_IS_ACTIVE(vap, va_flags)) {
     vap->va_flags &= (SF_SUPPORTED | UF_SETTABLE);
 }
 error = VNOP_SETATTR(vp, vap, ctx);

 if ((error == 0) && !VATTR_ALL_SUPPORTED(vap))
  error = vnode_setattr_fallback(vp, vap, ctx);
out:
 return(error);
}
