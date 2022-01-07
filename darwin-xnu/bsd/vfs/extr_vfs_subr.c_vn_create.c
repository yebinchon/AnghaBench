
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct vnode_attr {int va_type; int va_acl; int va_vaflags; } ;
struct componentname {int cn_nameptr; } ;
struct nameidata {struct componentname ni_cnd; } ;
typedef scalar_t__ errno_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int KAUTH_DEBUG (char*,scalar_t__,...) ;
 scalar_t__ NULLVP ;
 scalar_t__ TRUE ;
 int VATTR_ALL_SUPPORTED (struct vnode_attr*) ;
 int VA_NOAUTH ;
 int VA_NOINHERIT ;




 int VNODE_LABEL_CREATE ;
 int VNOP_CLOSE (scalar_t__,int,int ) ;
 scalar_t__ VNOP_MKNOD (scalar_t__,scalar_t__*,struct componentname*,struct vnode_attr*,int ) ;
 int VN_CREATE_DOOPEN ;
 int VN_CREATE_NOAUTH ;
 int VN_CREATE_NOINHERIT ;
 int VN_CREATE_NOLABEL ;


 scalar_t__ kdebug_enable ;
 int kdebug_lookup (scalar_t__,struct componentname*) ;
 scalar_t__ namei_compound_available (scalar_t__,struct nameidata*) ;
 int panic (char*,...) ;
 int vn_attribute_cleanup (struct vnode_attr*,int) ;
 scalar_t__ vn_attribute_prepare (scalar_t__,struct vnode_attr*,int*,int ) ;
 scalar_t__ vn_create_reg (scalar_t__,scalar_t__*,struct nameidata*,struct vnode_attr*,int,int,int*,int ) ;
 scalar_t__ vn_mkdir (scalar_t__,scalar_t__*,struct nameidata*,struct vnode_attr*,int ) ;
 scalar_t__ vnode_label (int ,scalar_t__,scalar_t__,struct componentname*,int ,int ) ;
 int vnode_mount (scalar_t__) ;
 int vnode_put (scalar_t__) ;
 scalar_t__ vnode_setattr_fallback (scalar_t__,struct vnode_attr*,int ) ;

errno_t
vn_create(vnode_t dvp, vnode_t *vpp, struct nameidata *ndp, struct vnode_attr *vap, uint32_t flags, int fmode, uint32_t *statusp, vfs_context_t ctx)
{
 errno_t error, old_error;
 vnode_t vp = (vnode_t)0;
 boolean_t batched;
 struct componentname *cnp;
 uint32_t defaulted;

 cnp = &ndp->ni_cnd;
 error = 0;
 batched = namei_compound_available(dvp, ndp) ? TRUE : FALSE;

 KAUTH_DEBUG("%p    CREATE - '%s'", dvp, cnp->cn_nameptr);

 if (flags & VN_CREATE_NOINHERIT)
  vap->va_vaflags |= VA_NOINHERIT;
 if (flags & VN_CREATE_NOAUTH)
  vap->va_vaflags |= VA_NOAUTH;



 error = vn_attribute_prepare(dvp, vap, &defaulted, ctx);
 if (error) {
  return error;
 }

 if (vap->va_type != 129 && (fmode != 0 || (flags & VN_CREATE_DOOPEN) || statusp)) {
  panic("Open parameters, but not a regular file.");
 }
 if ((fmode != 0) && ((flags & VN_CREATE_DOOPEN) == 0)) {
  panic("Mode for open, but not trying to open...");
 }





 switch(vap->va_type) {
 case 129:
  error = vn_create_reg(dvp, vpp, ndp, vap, flags, fmode, statusp, ctx);
  break;
 case 131:
  error = vn_mkdir(dvp, vpp, ndp, vap, ctx);
  break;
 case 128:
 case 130:
 case 133:
 case 132:
  error = VNOP_MKNOD(dvp, vpp, cnp, vap, ctx);
  break;
 default:
  panic("vnode_create: unknown vtype %d", vap->va_type);
 }
 if (error != 0) {
  KAUTH_DEBUG("%p    CREATE - error %d returned by filesystem", dvp, error);
  goto out;
 }

 vp = *vpp;
 old_error = error;
 if (!VATTR_ALL_SUPPORTED(vap) && *vpp) {
  KAUTH_DEBUG("     CREATE - doing fallback with ACL %p", vap->va_acl);
  error = vnode_setattr_fallback(*vpp, vap, ctx);
 }



 if ((error != 0) && (vp != (vnode_t)0)) {


  if (batched && (old_error == 0) && (vap->va_type == 129)) {
   VNOP_CLOSE(vp, fmode, ctx);
  }


  if (!batched) {
   *vpp = (vnode_t) 0;
   vnode_put(vp);
   vp = NULLVP;
  }
 }





 if (kdebug_enable && *vpp)
  kdebug_lookup(*vpp, cnp);

out:
 vn_attribute_cleanup(vap, defaulted);

 return(error);
}
