
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int va_uid; int va_gid; int va_acl; scalar_t__ va_mode; } ;
typedef int mode_t ;
typedef int kauth_action_t ;
struct TYPE_12__ {int v_flag; } ;


 int AUDIT_ARG (int ,scalar_t__) ;
 int EACCES ;
 int EPERM ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 int VISNAMEDSTREAM ;
 int mac_vnode_check_setacl (int ,TYPE_1__*,int ) ;
 int mac_vnode_check_setmode (int ,TYPE_1__*,int ) ;
 int mac_vnode_check_setowner (int ,TYPE_1__*,int,int) ;
 int mac_vnode_notify_setacl (int ,TYPE_1__*,int ) ;
 int mac_vnode_notify_setmode (int ,TYPE_1__*,int ) ;
 int mac_vnode_notify_setowner (int ,TYPE_1__*,int,int) ;
 int mode ;
 int va_acl ;
 int va_gid ;
 int va_mode ;
 int va_uid ;
 int vnode_authattr (TYPE_1__*,struct vnode_attr*,int *,int ) ;
 int vnode_authorize (TYPE_1__*,int *,int ,int ) ;
 int vnode_setattr (TYPE_1__*,struct vnode_attr*,int ) ;

__attribute__((used)) static int
chmod_vnode(vfs_context_t ctx, vnode_t vp, struct vnode_attr *vap)
{
 kauth_action_t action;
 int error;

 AUDIT_ARG(mode, vap->va_mode);
 if (((error = vnode_authattr(vp, vap, &action, ctx)) != 0) ||
     ((error = vnode_authorize(vp, ((void*)0), action, ctx)) != 0)) {
  if (error == EACCES)
   error = EPERM;
  return(error);
 }

 if ((error = vnode_setattr(vp, vap, ctx)) != 0)
  return (error);
 return (error);
}
