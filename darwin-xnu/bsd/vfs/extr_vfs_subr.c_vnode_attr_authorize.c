
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef struct _vnode_authorize_context* vauth_ctx ;
struct vnode_attr {scalar_t__ va_type; } ;
struct _vnode_authorize_context {scalar_t__ flags_valid; scalar_t__ flags; struct vnode_attr* dvap; void* dvp; struct vnode_attr* vap; void* vp; int ctx; } ;
typedef TYPE_1__* mount_t ;
typedef int kauth_action_t ;
typedef int kauth_ace_rights_t ;
typedef int boolean_t ;
struct TYPE_5__ {int mnt_flag; } ;


 int EACCES ;
 int EPERM ;
 int EROFS ;
 int FALSE ;
 int KAUTH_VNODE_ACCESS ;
 int KAUTH_VNODE_DELETE ;
 int KAUTH_VNODE_DELETE_CHILD ;
 int KAUTH_VNODE_EXECUTE ;
 int KAUTH_VNODE_NOIMMUTABLE ;
 int KAUTH_VNODE_WRITE_RIGHTS ;
 int MNT_NOEXEC ;
 int MNT_RDONLY ;
 void* NULLVP ;
 int TRUE ;
 int VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 scalar_t__ VDIR ;
 scalar_t__ VLNK ;
 scalar_t__ VREG ;
 int panic (char*) ;
 int va_acl ;
 int va_gid ;
 int va_uid ;
 scalar_t__ vfs_context_issuser (int ) ;
 scalar_t__ vfs_extendedsecurity (TYPE_1__*) ;
 int vnode_attr_authorize_internal (struct _vnode_authorize_context*,TYPE_1__*,int,int ,int *,int,int ) ;

int
vnode_attr_authorize(struct vnode_attr *vap, struct vnode_attr *dvap, mount_t mp,
    kauth_action_t action, vfs_context_t ctx)
{
 struct _vnode_authorize_context auth_context;
 vauth_ctx vcp;
 kauth_ace_rights_t rights;
 int noimmutable;
 boolean_t found_deny;
 boolean_t is_suser = FALSE;
 int result = 0;

 vcp = &auth_context;
 vcp->ctx = ctx;
 vcp->vp = NULLVP;
 vcp->vap = vap;
 vcp->dvp = NULLVP;
 vcp->dvap = dvap;
 vcp->flags = vcp->flags_valid = 0;

 noimmutable = (action & KAUTH_VNODE_NOIMMUTABLE) ? 1 : 0;
 rights = action & ~(KAUTH_VNODE_ACCESS | KAUTH_VNODE_NOIMMUTABLE);




 if ((rights & KAUTH_VNODE_WRITE_RIGHTS) &&
     mp && (mp->mnt_flag & MNT_RDONLY) &&
     ((vap->va_type == VREG) || (vap->va_type == VDIR) ||
     (vap->va_type == VLNK) || (rights & KAUTH_VNODE_DELETE) ||
     (rights & KAUTH_VNODE_DELETE_CHILD))) {
  result = EROFS;
  goto out;
 }




 if ((rights & KAUTH_VNODE_EXECUTE) &&
     (vap->va_type == VREG) && mp && (mp->mnt_flag & MNT_NOEXEC)) {
  result = EACCES;
  goto out;
 }

 if (vfs_context_issuser(ctx)) {




  if (!(rights & (KAUTH_VNODE_EXECUTE | KAUTH_VNODE_WRITE_RIGHTS)))
   goto out;
  is_suser = TRUE;
 } else {
  if (!VATTR_IS_SUPPORTED(vap, va_uid) ||
      !VATTR_IS_SUPPORTED(vap, va_gid) ||
      (mp && vfs_extendedsecurity(mp) && !VATTR_IS_SUPPORTED(vap, va_acl))) {
   panic("vnode attrs not complete for vnode_attr_authorize\n");
  }
 }

 result = vnode_attr_authorize_internal(vcp, mp, rights, is_suser,
     &found_deny, noimmutable, FALSE);

 if (result == EPERM)
  result = EACCES;
out:
 return (result);
}
