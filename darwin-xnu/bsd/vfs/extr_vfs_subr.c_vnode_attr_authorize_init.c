
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
typedef int kauth_action_t ;


 int EINVAL ;
 int KAUTH_VNODE_DELETE ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int va_acl ;
 int va_flags ;
 int va_gid ;
 int va_mode ;
 int va_type ;
 int va_uid ;
 int vfs_context_issuser (int ) ;

int
vnode_attr_authorize_init(struct vnode_attr *vap, struct vnode_attr *dvap,
    kauth_action_t action, vfs_context_t ctx)
{
 VATTR_INIT(vap);
 VATTR_WANTED(vap, va_type);
 VATTR_WANTED(vap, va_mode);
 VATTR_WANTED(vap, va_flags);
 if (dvap) {
  VATTR_INIT(dvap);
  if (action & KAUTH_VNODE_DELETE) {
   VATTR_WANTED(dvap, va_type);
   VATTR_WANTED(dvap, va_mode);
   VATTR_WANTED(dvap, va_flags);
  }
 } else if (action & KAUTH_VNODE_DELETE) {
  return (EINVAL);
 }

 if (!vfs_context_issuser(ctx)) {
  VATTR_WANTED(vap, va_uid);
  VATTR_WANTED(vap, va_gid);
  VATTR_WANTED(vap, va_acl);
  if (dvap && (action & KAUTH_VNODE_DELETE)) {
   VATTR_WANTED(dvap, va_uid);
   VATTR_WANTED(dvap, va_gid);
   VATTR_WANTED(dvap, va_acl);
  }
 }

 return (0);
}
