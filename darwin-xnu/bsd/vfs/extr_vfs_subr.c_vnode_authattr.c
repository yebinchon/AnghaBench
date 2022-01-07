
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
typedef scalar_t__ uid_t ;
struct vnode_attr {int va_active; int va_vaflags; int va_mode; scalar_t__ va_uid; int va_flags; TYPE_6__* va_acl; int va_guuid; int va_gid; int va_uuuid; } ;
struct kauth_ace {int dummy; } ;
typedef int mode_t ;
typedef int kauth_cred_t ;
typedef int kauth_action_t ;
typedef int guid_t ;
typedef int gid_t ;
struct TYPE_8__ {int acl_entrycount; int * acl_ace; } ;
struct TYPE_7__ {int v_mount; } ;


 int EACCES ;
 int EINVAL ;
 int EISDIR ;
 int EPERM ;
 int KAUTH_DEBUG (char*,...) ;
 int KAUTH_VNODE_CHECKIMMUTABLE ;
 int KAUTH_VNODE_NOIMMUTABLE ;
 int KAUTH_VNODE_TAKE_OWNERSHIP ;
 int KAUTH_VNODE_WRITE_ATTRIBUTES ;
 int KAUTH_VNODE_WRITE_DATA ;
 int KAUTH_VNODE_WRITE_SECURITY ;
 int SF_SETTABLE ;
 int S_ISGID ;
 int S_ISUID ;
 int UF_SETTABLE ;
 int VATTR_INIT (struct vnode_attr*) ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int VA_UTIMES_NULL ;
 int VNODE_ATTR_RDONLY ;
 int kauth_acl_free (TYPE_6__*) ;
 int kauth_cred_getguid (int ,int *) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 scalar_t__ kauth_cred_gid2guid (int ,int *) ;
 int kauth_cred_ismember_gid (int ,int ,int*) ;
 int kauth_cred_ismember_guid (int ,int *,int*) ;
 int kauth_cred_issuser (int ) ;
 scalar_t__ kauth_cred_uid2guid (scalar_t__,int *) ;
 scalar_t__ kauth_guid_equal (int *,int *) ;
 int kauth_null_guid ;
 scalar_t__ memcmp (int *,int *,int) ;
 int va_access_time ;
 int va_acl ;
 int va_addedtime ;
 int va_backup_time ;
 int va_change_time ;
 int va_create_time ;
 int va_data_size ;
 int va_encoding ;
 int va_flags ;
 int va_gid ;
 int va_guuid ;
 int va_mode ;
 int va_modify_time ;
 int va_uid ;
 int va_uuuid ;
 scalar_t__ vauth_node_owner (struct vnode_attr*,int ) ;
 scalar_t__ vfs_authopaque (int ) ;
 int vfs_context_ucred (int ) ;
 int vnode_getattr (TYPE_1__*,struct vnode_attr*,int ) ;
 scalar_t__ vnode_isdir (TYPE_1__*) ;
 int vnode_isreg (TYPE_1__*) ;

int
vnode_authattr(vnode_t vp, struct vnode_attr *vap, kauth_action_t *actionp, vfs_context_t ctx)
{
 struct vnode_attr ova;
 kauth_action_t required_action;
 int error, has_priv_suser, ismember, chowner, chgroup, clear_suid, clear_sgid;
 guid_t changer;
 gid_t group;
 uid_t owner;
 mode_t newmode;
 kauth_cred_t cred;
 uint32_t fdelta;

 VATTR_INIT(&ova);
 required_action = 0;
 error = 0;




 if (vfs_authopaque(vp->v_mount))
  goto out;




 if (vap->va_active & VNODE_ATTR_RDONLY) {
  KAUTH_DEBUG("ATTR - ERROR: attempt to set readonly attribute(s)");
  error = EINVAL;
  goto out;
 }




 cred = vfs_context_ucred(ctx);
 has_priv_suser = kauth_cred_issuser(cred);
 if (VATTR_IS_ACTIVE(vap, va_uid) ||
     VATTR_IS_ACTIVE(vap, va_gid) ||
     VATTR_IS_ACTIVE(vap, va_mode) ||
     VATTR_IS_ACTIVE(vap, va_uuuid) ||
     VATTR_IS_ACTIVE(vap, va_guuid)) {
  VATTR_WANTED(&ova, va_mode);
  VATTR_WANTED(&ova, va_uid);
  VATTR_WANTED(&ova, va_gid);
  VATTR_WANTED(&ova, va_uuuid);
  VATTR_WANTED(&ova, va_guuid);
  KAUTH_DEBUG("ATTR - security information changing, fetching existing attributes");
 }





 if (VATTR_IS_ACTIVE(vap, va_create_time) ||
     VATTR_IS_ACTIVE(vap, va_change_time) ||
     VATTR_IS_ACTIVE(vap, va_modify_time) ||
     VATTR_IS_ACTIVE(vap, va_access_time) ||
     VATTR_IS_ACTIVE(vap, va_backup_time) ||
     VATTR_IS_ACTIVE(vap, va_addedtime)) {

  VATTR_WANTED(&ova, va_uid);



  KAUTH_DEBUG("ATTR - timestamps changing, fetching uid and GUID");
 }




 if (VATTR_IS_ACTIVE(vap, va_flags)) {
  KAUTH_DEBUG("ATTR - flags changing, fetching old flags");
  VATTR_WANTED(&ova, va_flags);
 }




 if (VATTR_IS_ACTIVE(vap, va_acl)) {
  KAUTH_DEBUG("ATTR - acl changing, fetching old flags");
  VATTR_WANTED(&ova, va_acl);
 }




 if (VATTR_IS_ACTIVE(vap, va_data_size)) {

  if (!vnode_isreg(vp)) {
   KAUTH_DEBUG("ATTR - ERROR: size change requested on non-file");
   error = vnode_isdir(vp) ? EISDIR : EINVAL;
   goto out;
  }
 }




 KAUTH_DEBUG("ATTR - fetching old attributes %016llx", ova.va_active);
 if ((error = vnode_getattr(vp, &ova, ctx)) != 0) {
  KAUTH_DEBUG("  ERROR - got %d trying to get attributes", error);
  goto out;
 }




 if (VATTR_IS_ACTIVE(vap, va_data_size)) {

   KAUTH_DEBUG("ATTR - size change, requiring WRITE_DATA");
   required_action |= KAUTH_VNODE_WRITE_DATA;
 }
 if (VATTR_IS_ACTIVE(vap, va_create_time) ||
     VATTR_IS_ACTIVE(vap, va_change_time) ||
     VATTR_IS_ACTIVE(vap, va_modify_time) ||
     VATTR_IS_ACTIVE(vap, va_access_time) ||
     VATTR_IS_ACTIVE(vap, va_backup_time) ||
     VATTR_IS_ACTIVE(vap, va_addedtime)) {





  if (has_priv_suser || vauth_node_owner(&ova, cred)) {
   KAUTH_DEBUG("ATTR - root or owner changing timestamps");
   required_action |= KAUTH_VNODE_CHECKIMMUTABLE | KAUTH_VNODE_WRITE_ATTRIBUTES;
  } else {

   if (vap->va_vaflags & VA_UTIMES_NULL) {
    KAUTH_DEBUG("ATTR - non-root/owner changing timestamps, requiring WRITE_ATTRIBUTES");
    required_action |= KAUTH_VNODE_WRITE_ATTRIBUTES;
   } else {
    KAUTH_DEBUG("ATTR - ERROR: illegal timestamp modification attempted");
    error = EACCES;
    goto out;
   }
  }
 }




 if (VATTR_IS_ACTIVE(vap, va_mode) && VATTR_IS_SUPPORTED(&ova, va_mode) && (ova.va_mode != vap->va_mode)) {
  KAUTH_DEBUG("ATTR - mode change from %06o to %06o", ova.va_mode, vap->va_mode);




  if (has_priv_suser) {
   KAUTH_DEBUG("ATTR - superuser mode change, requiring immutability check");
   required_action |= KAUTH_VNODE_CHECKIMMUTABLE;
  } else {

   KAUTH_DEBUG("ATTR - non-superuser mode change, requiring WRITE_SECURITY");
   required_action |= KAUTH_VNODE_WRITE_SECURITY;
  }





  if (vap->va_mode & S_ISGID) {
   required_action |= KAUTH_VNODE_CHECKIMMUTABLE;
   if (!has_priv_suser) {
    if (VATTR_IS_ACTIVE(vap, va_gid)) {
     group = vap->va_gid;
    } else if (VATTR_IS_SUPPORTED(&ova, va_gid)) {
     group = ova.va_gid;
    } else {
     KAUTH_DEBUG("ATTR - ERROR: setgid but no gid available");
     error = EINVAL;
     goto out;
    }




    if ((error = kauth_cred_ismember_gid(cred, group, &ismember)) != 0) {
     KAUTH_DEBUG("ATTR - ERROR: got %d checking for membership in %d", error, vap->va_gid);
     goto out;
    }
    if (!ismember) {
     KAUTH_DEBUG("  DENIED - can't set SGID bit, not a member of %d", group);
     error = EPERM;
     goto out;
    }
   }
  }




  if (vap->va_mode & S_ISUID) {
   required_action |= KAUTH_VNODE_CHECKIMMUTABLE;
   if (!has_priv_suser) {
    if (VATTR_IS_ACTIVE(vap, va_uid)) {
     owner = vap->va_uid;
    } else if (VATTR_IS_SUPPORTED(&ova, va_uid)) {
     owner = ova.va_uid;
    } else {
     KAUTH_DEBUG("ATTR - ERROR: setuid but no uid available");
     error = EINVAL;
     goto out;
    }
    if (owner != kauth_cred_getuid(cred)) {



     KAUTH_DEBUG("ATTR - ERROR: illegal attempt to set the setuid bit");
     error = EPERM;
     goto out;
    }
   }
  }
 }
 if (VATTR_IS_ACTIVE(vap, va_flags)) {

  if (VATTR_IS_SUPPORTED(&ova, va_flags)) {
   fdelta = vap->va_flags ^ ova.va_flags;
  } else {
   fdelta = vap->va_flags;
  }

  if (fdelta != 0) {
   KAUTH_DEBUG("ATTR - flags changing, requiring WRITE_SECURITY");
   required_action |= KAUTH_VNODE_WRITE_SECURITY;


   if (has_priv_suser) {





    if (fdelta & ~(UF_SETTABLE | SF_SETTABLE)) {
     error = EPERM;
     KAUTH_DEBUG("  DENIED - superuser attempt to set illegal flag(s)");
     goto out;
    }
   } else {
    if (fdelta & ~UF_SETTABLE) {
     error = EPERM;
     KAUTH_DEBUG("  DENIED - user attempt to set illegal flag(s)");
     goto out;
    }
   }
   required_action |= KAUTH_VNODE_NOIMMUTABLE;
  }
 }




 chowner = 0;
 chgroup = 0;
 clear_suid = 0;
 clear_sgid = 0;







 if (VATTR_IS_ACTIVE(vap, va_uid)) {
  if (VATTR_IS_SUPPORTED(&ova, va_uid) && (vap->va_uid != ova.va_uid)) {
  if (!has_priv_suser && (kauth_cred_getuid(cred) != vap->va_uid)) {
   KAUTH_DEBUG("  DENIED - non-superuser cannot change ownershipt to a third party");
   error = EPERM;
   goto out;
  }
  chowner = 1;
 }
  clear_suid = 1;
 }







 if (VATTR_IS_ACTIVE(vap, va_gid)) {
  if (VATTR_IS_SUPPORTED(&ova, va_gid) && (vap->va_gid != ova.va_gid)) {
  if (!has_priv_suser) {
   if ((error = kauth_cred_ismember_gid(cred, vap->va_gid, &ismember)) != 0) {
    KAUTH_DEBUG("  ERROR - got %d checking for membership in %d", error, vap->va_gid);
    goto out;
   }
   if (!ismember) {
    KAUTH_DEBUG("  DENIED - group change from %d to %d but not a member of target group",
        ova.va_gid, vap->va_gid);
    error = EPERM;
    goto out;
   }
  }
  chgroup = 1;
 }
  clear_sgid = 1;
 }




 if (VATTR_IS_ACTIVE(vap, va_uuuid)) {

  if (VATTR_IS_SUPPORTED(&ova, va_uuuid)) {
   if (kauth_guid_equal(&vap->va_uuuid, &ova.va_uuuid))
    goto no_uuuid_change;





   if (kauth_guid_equal(&ova.va_uuuid, &kauth_null_guid) &&
       VATTR_IS_SUPPORTED(&ova, va_uid)) {
    guid_t uid_guid;

    if (kauth_cred_uid2guid(ova.va_uid, &uid_guid) == 0 &&
        kauth_guid_equal(&vap->va_uuuid, &uid_guid))
         goto no_uuuid_change;
   }
  }
  if (!has_priv_suser) {
   if ((error = kauth_cred_getguid(cred, &changer)) != 0) {
    KAUTH_DEBUG("  ERROR - got %d trying to get caller UUID", error);

    goto out;
   }
   if (!kauth_guid_equal(&vap->va_uuuid, &changer) &&
       !kauth_guid_equal(&vap->va_uuuid, &kauth_null_guid)) {
    KAUTH_DEBUG("  ERROR - cannot set supplied owner UUID - not us / null");
    error = EPERM;
    goto out;
   }
  }
  chowner = 1;
  clear_suid = 1;
 }
no_uuuid_change:



 if (VATTR_IS_ACTIVE(vap, va_guuid)) {

  if (VATTR_IS_SUPPORTED(&ova, va_guuid)) {
   if (kauth_guid_equal(&vap->va_guuid, &ova.va_guuid))
    goto no_guuid_change;





   if (kauth_guid_equal(&ova.va_guuid, &kauth_null_guid) &&
       VATTR_IS_SUPPORTED(&ova, va_gid)) {
    guid_t gid_guid;

    if (kauth_cred_gid2guid(ova.va_gid, &gid_guid) == 0 &&
        kauth_guid_equal(&vap->va_guuid, &gid_guid))
         goto no_guuid_change;
   }
  }
  if (!has_priv_suser) {
   if (kauth_guid_equal(&vap->va_guuid, &kauth_null_guid))
    ismember = 1;
   else if ((error = kauth_cred_ismember_guid(cred, &vap->va_guuid, &ismember)) != 0) {
    KAUTH_DEBUG("  ERROR - got %d trying to check group membership", error);
    goto out;
   }
   if (!ismember) {
    KAUTH_DEBUG("  ERROR - cannot set supplied group UUID - not a member / null");
    error = EPERM;
    goto out;
   }
  }
  chgroup = 1;
 }
no_guuid_change:




 if (chowner || chgroup || clear_suid || clear_sgid) {
  if (has_priv_suser) {
   KAUTH_DEBUG("ATTR - superuser changing file owner/group, requiring immutability check");
   required_action |= KAUTH_VNODE_CHECKIMMUTABLE;
  } else {
   if (chowner) {
    KAUTH_DEBUG("ATTR - ownership change, requiring TAKE_OWNERSHIP");
    required_action |= KAUTH_VNODE_TAKE_OWNERSHIP;
   }
   if (chgroup && !chowner) {
    KAUTH_DEBUG("ATTR - group change, requiring WRITE_SECURITY");
    required_action |= KAUTH_VNODE_WRITE_SECURITY;
   }

  }





  if (VATTR_IS_ACTIVE(vap, va_mode)) {
   newmode = vap->va_mode;
  } else if (VATTR_IS_SUPPORTED(&ova, va_mode)) {
   newmode = ova.va_mode;
  } else {
   KAUTH_DEBUG("CHOWN - trying to change owner but cannot get mode from filesystem to mask setugid bits");
   newmode = 0;
  }






  if (newmode & (S_ISUID | S_ISGID)) {
   if (!VATTR_IS_ACTIVE(vap, va_mode) || !has_priv_suser) {
    KAUTH_DEBUG("CHOWN - masking setugid bits from mode %o to %o",
     newmode, newmode & ~(S_ISUID | S_ISGID));
    newmode &= ~(S_ISUID | S_ISGID);
   }
   VATTR_SET(vap, va_mode, newmode);
  }
 }




 if (VATTR_IS_ACTIVE(vap, va_acl)) {


  if (!VATTR_IS_ACTIVE(&ova, va_acl) || (ova.va_acl == ((void*)0))) {


   if (vap->va_acl != ((void*)0)) {
    required_action |= KAUTH_VNODE_WRITE_SECURITY;
    KAUTH_DEBUG("CHMOD - adding ACL");
   }


  } else if (vap->va_acl == ((void*)0)) {
   required_action |= KAUTH_VNODE_WRITE_SECURITY;
   KAUTH_DEBUG("CHMOD - removing ACL");


  } else {
   if (vap->va_acl->acl_entrycount != ova.va_acl->acl_entrycount) {

    required_action |= KAUTH_VNODE_WRITE_SECURITY;
    KAUTH_DEBUG("CHMOD - adding/removing ACL entries");
   } else if (vap->va_acl->acl_entrycount > 0) {

    if (memcmp(&vap->va_acl->acl_ace[0], &ova.va_acl->acl_ace[0],
     sizeof(struct kauth_ace) * vap->va_acl->acl_entrycount)) {
     required_action |= KAUTH_VNODE_WRITE_SECURITY;
     KAUTH_DEBUG("CHMOD - changing ACL entries");
    }
   }
  }
 }




 if (VATTR_IS_ACTIVE(vap, va_encoding))
  required_action |= KAUTH_VNODE_WRITE_ATTRIBUTES;

out:
 if (VATTR_IS_SUPPORTED(&ova, va_acl) && (ova.va_acl != ((void*)0)))
  kauth_acl_free(ova.va_acl);
 if (error == 0)
  *actionp = required_action;
 return(error);
}
