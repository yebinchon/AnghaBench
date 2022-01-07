
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnode_attr {int * va_base_acl; int * va_acl; } ;
typedef int * kauth_acl_t ;


 int VATTR_CLEAR_ACTIVE (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 int VATTR_PREPARE_DEFAULTED_GID ;
 int VATTR_PREPARE_DEFAULTED_MODE ;
 int VATTR_PREPARE_DEFAULTED_UID ;
 int VATTR_SET (struct vnode_attr*,int ,int *) ;
 int kauth_acl_free (int *) ;
 int va_acl ;
 int va_gid ;
 int va_mode ;
 int va_uid ;

void
vn_attribute_cleanup(struct vnode_attr *vap, uint32_t defaulted_fields)
{





 kauth_acl_t nacl, oacl;

 if (VATTR_IS_ACTIVE(vap, va_acl)) {
  nacl = vap->va_acl;
  oacl = vap->va_base_acl;

  if (oacl) {
   VATTR_SET(vap, va_acl, oacl);
   vap->va_base_acl = ((void*)0);
  } else {
   VATTR_CLEAR_ACTIVE(vap, va_acl);
  }

  if (nacl != ((void*)0)) {
   kauth_acl_free(nacl);
  }
 }

 if ((defaulted_fields & VATTR_PREPARE_DEFAULTED_MODE) != 0) {
  VATTR_CLEAR_ACTIVE(vap, va_mode);
 }
 if ((defaulted_fields & VATTR_PREPARE_DEFAULTED_GID) != 0) {
  VATTR_CLEAR_ACTIVE(vap, va_gid);
 }
 if ((defaulted_fields & VATTR_PREPARE_DEFAULTED_UID) != 0) {
  VATTR_CLEAR_ACTIVE(vap, va_uid);
 }

 return;
}
