
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {TYPE_1__* va_acl; void* va_guuid; void* va_uuuid; } ;
struct TYPE_3__ {scalar_t__ acl_entrycount; scalar_t__ acl_flags; } ;
struct kauth_filesec {void* fsec_group; void* fsec_owner; int fsec_magic; TYPE_1__ fsec_acl; } ;
typedef struct kauth_filesec* kauth_filesec_t ;
typedef TYPE_1__* kauth_acl_t ;


 int EINVAL ;
 int ENOATTR ;
 int KAUTH_DEBUG (char*,...) ;
 int KAUTH_FILESEC_MAGIC ;
 scalar_t__ KAUTH_FILESEC_NOACL ;
 int KAUTH_FILESEC_XATTR ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_NOT_RETURNED (struct vnode_attr*,int ) ;
 int VATTR_SET_SUPPORTED (struct vnode_attr*,int ) ;
 int VFS_DEBUG (int ,int ,char*,...) ;
 int XATTR_NOSECURITY ;
 int XATTR_VNODE_SUPPORTED (int ) ;
 int kauth_filesec_free (struct kauth_filesec*) ;
 scalar_t__ kauth_guid_equal (void**,void**) ;
 void* kauth_null_guid ;
 int va_acl ;
 int va_guuid ;
 int va_uuuid ;
 int vn_removexattr (int ,int ,int ,int ) ;
 int vnode_get_filesec (int ,struct kauth_filesec**,int ) ;
 int vnode_set_filesec (int ,struct kauth_filesec*,TYPE_1__*,int ) ;
 int vnode_vtype (int ) ;

int
vnode_setattr_fallback(vnode_t vp, struct vnode_attr *vap, vfs_context_t ctx)
{
 kauth_filesec_t fsec;
 kauth_acl_t facl;
 struct kauth_filesec lfsec;
 int error;

 error = 0;







 if (VATTR_NOT_RETURNED(vap, va_acl) ||
     VATTR_NOT_RETURNED(vap, va_uuuid) ||
     VATTR_NOT_RETURNED(vap, va_guuid)) {
  VFS_DEBUG(ctx, vp, "SETATTR - doing filesec fallback");





  if (!XATTR_VNODE_SUPPORTED(vp)) {
   VFS_DEBUG(ctx, vp, "SETATTR - Can't write ACL to file type %d", vnode_vtype(vp));
   error = EINVAL;
   goto out;
  }






  fsec = ((void*)0);
  if (!VATTR_IS_ACTIVE(vap, va_acl) ||
      !VATTR_IS_ACTIVE(vap, va_uuuid) ||
      !VATTR_IS_ACTIVE(vap, va_guuid)) {
   if ((error = vnode_get_filesec(vp, &fsec, ctx)) != 0) {
    KAUTH_DEBUG("SETATTR - ERROR %d fetching filesec for update", error);
    goto out;
   }
  }

  if (fsec == ((void*)0)) {
   KAUTH_DEBUG("SETATTR - using local filesec for new/full update");
   fsec = &lfsec;
  } else {
   KAUTH_DEBUG("SETATTR - updating existing filesec");
  }

  facl = &fsec->fsec_acl;


  if (fsec == &lfsec) {
   fsec->fsec_magic = KAUTH_FILESEC_MAGIC;
   fsec->fsec_owner = kauth_null_guid;
   fsec->fsec_group = kauth_null_guid;
   facl->acl_entrycount = KAUTH_FILESEC_NOACL;
   facl->acl_flags = 0;
  }




  if (VATTR_IS_ACTIVE(vap, va_uuuid)) {
   KAUTH_DEBUG("SETATTR - updating owner UUID");
   fsec->fsec_owner = vap->va_uuuid;
   VATTR_SET_SUPPORTED(vap, va_uuuid);
  }
  if (VATTR_IS_ACTIVE(vap, va_guuid)) {
   KAUTH_DEBUG("SETATTR - updating group UUID");
   fsec->fsec_group = vap->va_guuid;
   VATTR_SET_SUPPORTED(vap, va_guuid);
  }
  if (VATTR_IS_ACTIVE(vap, va_acl)) {
   if (vap->va_acl == ((void*)0)) {
    KAUTH_DEBUG("SETATTR - removing ACL");
    facl->acl_entrycount = KAUTH_FILESEC_NOACL;
   } else {
    KAUTH_DEBUG("SETATTR - setting ACL with %d entries", vap->va_acl->acl_entrycount);
    facl = vap->va_acl;
   }
   VATTR_SET_SUPPORTED(vap, va_acl);
  }





  if ((facl->acl_entrycount == KAUTH_FILESEC_NOACL) &&
      kauth_guid_equal(&fsec->fsec_owner, &kauth_null_guid) &&
      kauth_guid_equal(&fsec->fsec_group, &kauth_null_guid)) {
   error = vn_removexattr(vp, KAUTH_FILESEC_XATTR, XATTR_NOSECURITY, ctx);

   if (error == ENOATTR)
    error = 0;
   VFS_DEBUG(ctx, vp, "SETATTR - remove filesec returning %d", error);
  } else {

   error = vnode_set_filesec(vp, fsec, facl, ctx);
   VFS_DEBUG(ctx, vp, "SETATTR - update filesec returning %d", error);
  }


  if (fsec != &lfsec)
   kauth_filesec_free(fsec);
 }
out:

 return(error);
}
