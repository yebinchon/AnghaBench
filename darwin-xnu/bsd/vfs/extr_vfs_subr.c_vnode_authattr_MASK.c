#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uid_t ;
struct vnode_attr {int va_active; int va_vaflags; int va_mode; scalar_t__ va_uid; int va_flags; TYPE_6__* va_acl; int /*<<< orphan*/  va_guuid; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uuuid; } ;
struct kauth_ace {int dummy; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int kauth_action_t ;
typedef  int /*<<< orphan*/  guid_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_8__ {int acl_entrycount; int /*<<< orphan*/ * acl_ace; } ;
struct TYPE_7__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EISDIR ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
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
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*) ; 
 scalar_t__ FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int VA_UTIMES_NULL ; 
 int VNODE_ATTR_RDONLY ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kauth_null_guid ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  va_access_time ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_addedtime ; 
 int /*<<< orphan*/  va_backup_time ; 
 int /*<<< orphan*/  va_change_time ; 
 int /*<<< orphan*/  va_create_time ; 
 int /*<<< orphan*/  va_data_size ; 
 int /*<<< orphan*/  va_encoding ; 
 int /*<<< orphan*/  va_flags ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_guuid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_modify_time ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  va_uuuid ; 
 scalar_t__ FUNC16 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (TYPE_1__*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 

int
FUNC22(vnode_t vp, struct vnode_attr *vap, kauth_action_t *actionp, vfs_context_t ctx)
{
	struct vnode_attr ova;
	kauth_action_t	required_action;
	int		error, has_priv_suser, ismember, chowner, chgroup, clear_suid, clear_sgid;
	guid_t		changer;
	gid_t		group;
	uid_t		owner;
	mode_t		newmode;
	kauth_cred_t	cred;
	uint32_t	fdelta;

	FUNC1(&ova);
	required_action = 0;
	error = 0;

	/*
	 * Quickly check for enforcement applicability.
	 */
	if (FUNC17(vp->v_mount))
		goto out;
	
	/*
	 * Check for attempts to set nonsensical fields.
	 */
	if (vap->va_active & VNODE_ATTR_RDONLY) {
		FUNC0("ATTR - ERROR: attempt to set readonly attribute(s)");
		error = EINVAL;
		goto out;
	}

	/*
	 * We need to know if the caller is the superuser.
	 */
	cred = FUNC18(ctx);
	has_priv_suser = FUNC12(cred);
	
	/*
	 * If any of the following are changing, we need information from the old file:
	 * va_uid
	 * va_gid
	 * va_mode
	 * va_uuuid
	 * va_guuid
	 */
	if (FUNC2(vap, va_uid) ||
	    FUNC2(vap, va_gid) ||
	    FUNC2(vap, va_mode) ||
	    FUNC2(vap, va_uuuid) ||
	    FUNC2(vap, va_guuid)) {
		FUNC5(&ova, va_mode);
		FUNC5(&ova, va_uid);
		FUNC5(&ova, va_gid);
		FUNC5(&ova, va_uuuid);
		FUNC5(&ova, va_guuid);
		FUNC0("ATTR - security information changing, fetching existing attributes");
	}

	/*
	 * If timestamps are being changed, we need to know who the file is owned
	 * by.
	 */
	if (FUNC2(vap, va_create_time) ||
	    FUNC2(vap, va_change_time) ||
	    FUNC2(vap, va_modify_time) ||
	    FUNC2(vap, va_access_time) ||
	    FUNC2(vap, va_backup_time) ||
	    FUNC2(vap, va_addedtime)) {

		FUNC5(&ova, va_uid);
#if 0	/* enable this when we support UUIDs as official owners */
		VATTR_WANTED(&ova, va_uuuid);
#endif
		FUNC0("ATTR - timestamps changing, fetching uid and GUID");
	}
		
	/*
	 * If flags are being changed, we need the old flags.
	 */
	if (FUNC2(vap, va_flags)) {
		FUNC0("ATTR - flags changing, fetching old flags");
		FUNC5(&ova, va_flags);
	}

	/*
	 * If ACLs are being changed, we need the old ACLs.
	 */
	if (FUNC2(vap, va_acl)) {
		FUNC0("ATTR - acl changing, fetching old flags");
		FUNC5(&ova, va_acl);
	}

	/*
	 * If the size is being set, make sure it's not a directory.
	 */
	if (FUNC2(vap, va_data_size)) {
		/* size is only meaningful on regular files, don't permit otherwise */
		if (!FUNC21(vp)) {
			FUNC0("ATTR - ERROR: size change requested on non-file");
			error = FUNC20(vp) ? EISDIR : EINVAL;
			goto out;
		}
	}

	/*
	 * Get old data.
	 */
	FUNC0("ATTR - fetching old attributes %016llx", ova.va_active);
	if ((error = FUNC19(vp, &ova, ctx)) != 0) {
		FUNC0("  ERROR - got %d trying to get attributes", error);
		goto out;
	}

	/*
	 * Size changes require write access to the file data.
	 */
	if (FUNC2(vap, va_data_size)) {
		/* if we can't get the size, or it's different, we need write access */
			FUNC0("ATTR - size change, requiring WRITE_DATA");
			required_action |= KAUTH_VNODE_WRITE_DATA;
	}

	/*
	 * Changing timestamps?
	 *
	 * Note that we are only called to authorize user-requested time changes;
	 * side-effect time changes are not authorized.  Authorisation is only
	 * required for existing files.
	 *
	 * Non-owners are not permitted to change the time on an existing
	 * file to anything other than the current time.
	 */
	if (FUNC2(vap, va_create_time) ||
	    FUNC2(vap, va_change_time) ||
	    FUNC2(vap, va_modify_time) ||
	    FUNC2(vap, va_access_time) ||
	    FUNC2(vap, va_backup_time) ||
	    FUNC2(vap, va_addedtime)) {
		/*
		 * The owner and root may set any timestamps they like,
		 * provided that the file is not immutable.  The owner still needs
		 * WRITE_ATTRIBUTES (implied by ownership but still deniable).
		 */
		if (has_priv_suser || FUNC16(&ova, cred)) {
			FUNC0("ATTR - root or owner changing timestamps");
			required_action |= KAUTH_VNODE_CHECKIMMUTABLE | KAUTH_VNODE_WRITE_ATTRIBUTES;
		} else {
			/* just setting the current time? */
			if (vap->va_vaflags & VA_UTIMES_NULL) {
				FUNC0("ATTR - non-root/owner changing timestamps, requiring WRITE_ATTRIBUTES");
				required_action |= KAUTH_VNODE_WRITE_ATTRIBUTES;
			} else {
				FUNC0("ATTR - ERROR: illegal timestamp modification attempted");
				error = EACCES;
				goto out;
			}
		}
	}

	/*
	 * Changing file mode?
	 */
	if (FUNC2(vap, va_mode) && FUNC3(&ova, va_mode) && (ova.va_mode != vap->va_mode)) {
		FUNC0("ATTR - mode change from %06o to %06o", ova.va_mode, vap->va_mode);

		/*
		 * Mode changes always have the same basic auth requirements.
		 */
		if (has_priv_suser) {
			FUNC0("ATTR - superuser mode change, requiring immutability check");
			required_action |= KAUTH_VNODE_CHECKIMMUTABLE;
		} else {
			/* need WRITE_SECURITY */
			FUNC0("ATTR - non-superuser mode change, requiring WRITE_SECURITY");
			required_action |= KAUTH_VNODE_WRITE_SECURITY;
		}

		/*
		 * Can't set the setgid bit if you're not in the group and not root.  Have to have
		 * existing group information in the case we're not setting it right now.
		 */
		if (vap->va_mode & S_ISGID) {
			required_action |= KAUTH_VNODE_CHECKIMMUTABLE;	/* always required */
			if (!has_priv_suser) {
				if (FUNC2(vap, va_gid)) {
					group = vap->va_gid;
				} else if (FUNC3(&ova, va_gid)) {
					group = ova.va_gid;
				} else {
					FUNC0("ATTR - ERROR: setgid but no gid available");
					error = EINVAL;
					goto out;
				}
				/*
				 * This might be too restrictive; WRITE_SECURITY might be implied by
				 * membership in this case, rather than being an additional requirement.
				 */
				if ((error = FUNC10(cred, group, &ismember)) != 0) {
					FUNC0("ATTR - ERROR: got %d checking for membership in %d", error, vap->va_gid);
					goto out;
				}
				if (!ismember) {
					FUNC0("  DENIED - can't set SGID bit, not a member of %d", group);
					error = EPERM;
					goto out;
				}
			}
		}

		/*
		 * Can't set the setuid bit unless you're root or the file's owner.
		 */
		if (vap->va_mode & S_ISUID) {
			required_action |= KAUTH_VNODE_CHECKIMMUTABLE;	/* always required */
			if (!has_priv_suser) {
				if (FUNC2(vap, va_uid)) {
					owner = vap->va_uid;
				} else if (FUNC3(&ova, va_uid)) {
					owner = ova.va_uid;
				} else {
					FUNC0("ATTR - ERROR: setuid but no uid available");
					error = EINVAL;
					goto out;
				}
				if (owner != FUNC8(cred)) {
					/*
					 * We could allow this if WRITE_SECURITY is permitted, perhaps.
					 */
					FUNC0("ATTR - ERROR: illegal attempt to set the setuid bit");
					error = EPERM;
					goto out;
				}
			}
		}
	}
	    
	/*
	 * Validate/mask flags changes.  This checks that only the flags in
	 * the UF_SETTABLE mask are being set, and preserves the flags in
	 * the SF_SETTABLE case.
	 *
	 * Since flags changes may be made in conjunction with other changes,
	 * we will ask the auth code to ignore immutability in the case that
	 * the SF_* flags are not set and we are only manipulating the file flags.
	 * 
	 */
	if (FUNC2(vap, va_flags)) {
		/* compute changing flags bits */
		if (FUNC3(&ova, va_flags)) {
			fdelta = vap->va_flags ^ ova.va_flags;
		} else {
			fdelta = vap->va_flags;
		}

		if (fdelta != 0) {
			FUNC0("ATTR - flags changing, requiring WRITE_SECURITY");
			required_action |= KAUTH_VNODE_WRITE_SECURITY;

			/* check that changing bits are legal */
			if (has_priv_suser) {
				/*
				 * The immutability check will prevent us from clearing the SF_*
				 * flags unless the system securelevel permits it, so just check
				 * for legal flags here.
				 */
				if (fdelta & ~(UF_SETTABLE | SF_SETTABLE)) {
					error = EPERM;
					FUNC0("  DENIED - superuser attempt to set illegal flag(s)");
					goto out;
				}
			} else {
				if (fdelta & ~UF_SETTABLE) {
					error = EPERM;
					FUNC0("  DENIED - user attempt to set illegal flag(s)");
					goto out;
				}
			}
			/*
			 * If the caller has the ability to manipulate file flags,
			 * security is not reduced by ignoring them for this operation.
			 *
			 * A more complete test here would consider the 'after' states of the flags
			 * to determine whether it would permit the operation, but this becomes
			 * very complex.
			 *
			 * Ignoring immutability is conditional on securelevel; this does not bypass
			 * the SF_* flags if securelevel > 0.
			 */
			required_action |= KAUTH_VNODE_NOIMMUTABLE;
		}
	}

	/*
	 * Validate ownership information.
	 */
	chowner = 0;
	chgroup = 0;
	clear_suid = 0;
	clear_sgid = 0;

	/*
	 * uid changing
	 * Note that if the filesystem didn't give us a UID, we expect that it doesn't
	 * support them in general, and will ignore it if/when we try to set it.
	 * We might want to clear the uid out of vap completely here.
	 */
	if (FUNC2(vap, va_uid)) {
		if (FUNC3(&ova, va_uid) && (vap->va_uid != ova.va_uid)) {
		if (!has_priv_suser && (FUNC8(cred) != vap->va_uid)) {
			FUNC0("  DENIED - non-superuser cannot change ownershipt to a third party");
			error = EPERM;
			goto out;
		}
		chowner = 1;
	}
		clear_suid = 1;
	}
	
	/*
	 * gid changing
	 * Note that if the filesystem didn't give us a GID, we expect that it doesn't
	 * support them in general, and will ignore it if/when we try to set it.
	 * We might want to clear the gid out of vap completely here.
	 */
	if (FUNC2(vap, va_gid)) {
		if (FUNC3(&ova, va_gid) && (vap->va_gid != ova.va_gid)) {
		if (!has_priv_suser) {
			if ((error = FUNC10(cred, vap->va_gid, &ismember)) != 0) {
				FUNC0("  ERROR - got %d checking for membership in %d", error, vap->va_gid);
				goto out;
			}
			if (!ismember) {
				FUNC0("  DENIED - group change from %d to %d but not a member of target group",
				    ova.va_gid, vap->va_gid);
				error = EPERM;
				goto out;
			}
		}
		chgroup = 1;
	}
		clear_sgid = 1;
	}

	/*
	 * Owner UUID being set or changed.
	 */
	if (FUNC2(vap, va_uuuid)) {
		/* if the owner UUID is not actually changing ... */
		if (FUNC3(&ova, va_uuuid)) {
			if (FUNC14(&vap->va_uuuid, &ova.va_uuuid))
				goto no_uuuid_change;
			
			/*
			 * If the current owner UUID is a null GUID, check
			 * it against the UUID corresponding to the owner UID.
			 */
			if (FUNC14(&ova.va_uuuid, &kauth_null_guid) &&
			    FUNC3(&ova, va_uid)) {
				guid_t uid_guid;

				if (FUNC13(ova.va_uid, &uid_guid) == 0 &&
				    FUNC14(&vap->va_uuuid, &uid_guid))
				    	goto no_uuuid_change;
			}
		}
		
		/*
		 * The owner UUID cannot be set by a non-superuser to anything other than
		 * their own or a null GUID (to "unset" the owner UUID).
		 * Note that file systems must be prepared to handle the
		 * null UUID case in a manner appropriate for that file
		 * system.
		 */
		if (!has_priv_suser) {
			if ((error = FUNC7(cred, &changer)) != 0) {
				FUNC0("  ERROR - got %d trying to get caller UUID", error);
				/* XXX ENOENT here - no UUID - should perhaps become EPERM */
				goto out;
			}
			if (!FUNC14(&vap->va_uuuid, &changer) &&
			    !FUNC14(&vap->va_uuuid, &kauth_null_guid)) {
				FUNC0("  ERROR - cannot set supplied owner UUID - not us / null");
				error = EPERM;
				goto out;
			}
		}
		chowner = 1;
		clear_suid = 1;
	}
no_uuuid_change:
	/*
	 * Group UUID being set or changed.
	 */
	if (FUNC2(vap, va_guuid)) {
		/* if the group UUID is not actually changing ... */
		if (FUNC3(&ova, va_guuid)) {
			if (FUNC14(&vap->va_guuid, &ova.va_guuid))
				goto no_guuid_change;

			/*
			 * If the current group UUID is a null UUID, check
			 * it against the UUID corresponding to the group GID.
			 */
			if (FUNC14(&ova.va_guuid, &kauth_null_guid) &&
			    FUNC3(&ova, va_gid)) {
				guid_t gid_guid;

				if (FUNC9(ova.va_gid, &gid_guid) == 0 &&
				    FUNC14(&vap->va_guuid, &gid_guid))
				    	goto no_guuid_change;
			}
		}

		/*
		 * The group UUID cannot be set by a non-superuser to anything other than
		 * one of which they are a member or a null GUID (to "unset"
		 * the group UUID).
		 * Note that file systems must be prepared to handle the
		 * null UUID case in a manner appropriate for that file
		 * system.
		 */
		if (!has_priv_suser) {
			if (FUNC14(&vap->va_guuid, &kauth_null_guid))
				ismember = 1;
			else if ((error = FUNC11(cred, &vap->va_guuid, &ismember)) != 0) {
				FUNC0("  ERROR - got %d trying to check group membership", error);
				goto out;
			}
			if (!ismember) {
				FUNC0("  ERROR - cannot set supplied group UUID - not a member / null");
				error = EPERM;
				goto out;
			}
		}
		chgroup = 1;
	}
no_guuid_change:

	/*
	 * Compute authorisation for group/ownership changes.
	 */
	if (chowner || chgroup || clear_suid || clear_sgid) {
		if (has_priv_suser) {
			FUNC0("ATTR - superuser changing file owner/group, requiring immutability check");
			required_action |= KAUTH_VNODE_CHECKIMMUTABLE;
		} else {
			if (chowner) {
				FUNC0("ATTR - ownership change, requiring TAKE_OWNERSHIP");
				required_action |= KAUTH_VNODE_TAKE_OWNERSHIP;
			}
			if (chgroup && !chowner) {
				FUNC0("ATTR - group change, requiring WRITE_SECURITY");
				required_action |= KAUTH_VNODE_WRITE_SECURITY;
			}
			
		}
			
		/*
		 * clear set-uid and set-gid bits. POSIX only requires this for
		 * non-privileged processes but we do it even for root.
		 */
		if (FUNC2(vap, va_mode)) {
			newmode = vap->va_mode;
		} else if (FUNC3(&ova, va_mode)) {
			newmode = ova.va_mode;
		} else {
			FUNC0("CHOWN - trying to change owner but cannot get mode from filesystem to mask setugid bits");
			newmode = 0;
		}

		/* chown always clears setuid/gid bits. An exception is made for
		 * setattrlist executed by a root process to set <uid, gid, mode> on a file:
		 * setattrlist is allowed to set the new mode on the file and change (chown)
		 * uid/gid.
		 */
		if (newmode & (S_ISUID | S_ISGID)) {
			if (!FUNC2(vap, va_mode) || !has_priv_suser) {
				FUNC0("CHOWN - masking setugid bits from mode %o to %o",
					newmode, newmode & ~(S_ISUID | S_ISGID));
				newmode &= ~(S_ISUID | S_ISGID);
			}
			FUNC4(vap, va_mode, newmode);
		}
	}

	/*
	 * Authorise changes in the ACL.
	 */
	if (FUNC2(vap, va_acl)) {

		/* no existing ACL */
		if (!FUNC2(&ova, va_acl) || (ova.va_acl == NULL)) {

			/* adding an ACL */
			if (vap->va_acl != NULL) {
				required_action |= KAUTH_VNODE_WRITE_SECURITY;
				FUNC0("CHMOD - adding ACL");
			}

			/* removing an existing ACL */
		} else if (vap->va_acl == NULL) {
			required_action |= KAUTH_VNODE_WRITE_SECURITY;
			FUNC0("CHMOD - removing ACL");

			/* updating an existing ACL */
		} else {
			if (vap->va_acl->acl_entrycount != ova.va_acl->acl_entrycount) {
				/* entry count changed, must be different */
				required_action |= KAUTH_VNODE_WRITE_SECURITY;
				FUNC0("CHMOD - adding/removing ACL entries");
			} else if (vap->va_acl->acl_entrycount > 0) {
				/* both ACLs have the same ACE count, said count is 1 or more, bitwise compare ACLs */
				if (FUNC15(&vap->va_acl->acl_ace[0], &ova.va_acl->acl_ace[0],
					sizeof(struct kauth_ace) * vap->va_acl->acl_entrycount)) {
					required_action |= KAUTH_VNODE_WRITE_SECURITY;
					FUNC0("CHMOD - changing ACL entries");
				}
			}
		}
	}

	/*
	 * Other attributes that require authorisation.
	 */
	if (FUNC2(vap, va_encoding))
		required_action |= KAUTH_VNODE_WRITE_ATTRIBUTES;
	
out:
	if (FUNC3(&ova, va_acl) && (ova.va_acl != NULL))
		FUNC6(ova.va_acl);
	if (error == 0)
		*actionp = required_action;
	return(error);
}