
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct vnode_attr {int va_vaflags; scalar_t__ va_type; int * va_base_acl; int * va_acl; } ;
typedef int * kauth_acl_t ;
struct TYPE_6__ {int v_mount; } ;


 int KAUTH_DEBUG (char*,TYPE_1__*,int) ;
 int VATTR_CLEAR_ACTIVE (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 int VATTR_SET (struct vnode_attr*,int ,int *) ;
 int VA_NOAUTH ;
 int VA_NOINHERIT ;
 scalar_t__ VDIR ;
 int kauth_acl_inherit (TYPE_1__*,int *,int **,int,int ) ;
 int va_acl ;
 scalar_t__ vfs_extendedsecurity (int ) ;
 int vn_attribute_cleanup (struct vnode_attr*,int ) ;
 int vnode_authattr_new_internal (TYPE_1__*,struct vnode_attr*,int,int *,int ) ;

int
vn_attribute_prepare(vnode_t dvp, struct vnode_attr *vap, uint32_t *defaulted_fieldsp, vfs_context_t ctx)
{
 kauth_acl_t nacl = ((void*)0), oacl = ((void*)0);
 int error;




 if (!(vap->va_vaflags & VA_NOINHERIT) && vfs_extendedsecurity(dvp->v_mount)) {

  if (VATTR_IS_ACTIVE(vap, va_acl)) {
   oacl = vap->va_acl;
  }

  vap->va_acl = ((void*)0);
  if ((error = kauth_acl_inherit(dvp,
    oacl,
    &nacl,
    vap->va_type == VDIR,
    ctx)) != 0) {
   KAUTH_DEBUG("%p    CREATE - error %d processing inheritance", dvp, error);
   return(error);
  }





  if (nacl == ((void*)0)) {
   VATTR_CLEAR_ACTIVE(vap, va_acl);
  } else {
   vap->va_base_acl = oacl;
   VATTR_SET(vap, va_acl, nacl);
  }
 }

 error = vnode_authattr_new_internal(dvp, vap, (vap->va_vaflags & VA_NOAUTH), defaulted_fieldsp, ctx);
 if (error) {
  vn_attribute_cleanup(vap, *defaulted_fieldsp);
 }

 return error;
}
