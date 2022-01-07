
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vauth_ctx ;
typedef int mount_t ;
typedef int kauth_ace_rights_t ;
typedef int boolean_t ;
struct TYPE_10__ {int va_mode; } ;
struct TYPE_9__ {scalar_t__ va_type; int va_mode; } ;
struct TYPE_8__ {TYPE_4__* vap; TYPE_4__* dvap; } ;


 int EPERM ;
 int KAUTH_DEBUG (char*,int ,...) ;
 int KAUTH_VNODE_CHECKIMMUTABLE ;
 int KAUTH_VNODE_DELETE ;
 int KAUTH_VNODE_DELETE_CHILD ;
 int KAUTH_VNODE_EXECUTE ;
 int KAUTH_VNODE_LINKTARGET ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int TRUE ;
 scalar_t__ VATTR_IS_SUPPORTED (TYPE_4__*,int ) ;
 scalar_t__ VREG ;
 TYPE_6__ va ;
 int va_mode ;
 int vnode_authorize_checkimmutable (int ,TYPE_4__*,int,int) ;
 int vnode_authorize_delete (TYPE_1__*,int) ;
 int vnode_authorize_simple (TYPE_1__*,int,int,int *) ;
 int vp ;

__attribute__((used)) static int
vnode_attr_authorize_internal(vauth_ctx vcp, mount_t mp,
    kauth_ace_rights_t rights, int is_suser, boolean_t *found_deny,
    int noimmutable, int parent_authorized_for_delete_child)
{
 int result;







 if ((result = vnode_authorize_checkimmutable(mp, vcp->vap, rights,
     noimmutable)) != 0)
  goto out;

 if ((rights & KAUTH_VNODE_DELETE) &&
     !parent_authorized_for_delete_child) {
  result = vnode_authorize_checkimmutable(mp, vcp->dvap,
      KAUTH_VNODE_DELETE_CHILD, 0);
  if (result)
   goto out;
 }





 rights &= ~(KAUTH_VNODE_LINKTARGET | KAUTH_VNODE_CHECKIMMUTABLE);
 if (rights == 0)
  goto out;






 if (!is_suser) {

  if ((rights & KAUTH_VNODE_DELETE) &&
      ((result = vnode_authorize_delete(vcp, parent_authorized_for_delete_child)) != 0))
      goto out;


  if ((rights & ~KAUTH_VNODE_DELETE) &&
      (result = vnode_authorize_simple(vcp, rights, rights & KAUTH_VNODE_DELETE, found_deny)) != 0)
   goto out;
 } else {




  if ((rights & KAUTH_VNODE_EXECUTE) &&
      (vcp->vap->va_type == VREG) &&
      VATTR_IS_SUPPORTED(vcp->vap, va_mode) &&
      !(vcp->vap->va_mode & (S_IXUSR | S_IXGRP | S_IXOTH))) {
   result = EPERM;
   KAUTH_DEBUG("%p    DENIED - root execute requires at least one x bit in 0x%x", vp, va.va_mode);
   goto out;
  }


  *found_deny = TRUE;

  KAUTH_DEBUG("%p    ALLOWED - caller is superuser", vp);
 }
out:
 return (result);
}
