#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
typedef  scalar_t__ u_int64_t ;
struct vnode_attr {int va_flags; int va_active; scalar_t__ va_uid; scalar_t__ va_gid; int /*<<< orphan*/  va_guuid; int /*<<< orphan*/  va_uuuid; } ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_20__ {scalar_t__* other; scalar_t__ seqid; } ;
typedef  TYPE_3__ nfs_stateid ;
struct TYPE_18__ {int nva_flags; scalar_t__ nva_uid; scalar_t__ nva_gid; int /*<<< orphan*/  nva_guuid; int /*<<< orphan*/  nva_uuuid; } ;
struct TYPE_19__ {scalar_t__ n_xid; int /*<<< orphan*/  n_lastio; TYPE_1__ n_vattr; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACLONLY ; 
 int EBADRPC ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOTSUP ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC3 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC4 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_ATTR_BITMAP_LEN ; 
 scalar_t__ FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int NFS_FATTR_ACL ; 
 int NFS_FATTR_MODE ; 
 int NFS_FFLAG_IS_ATTR ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_SETATTR ; 
 int /*<<< orphan*/  FUNC8 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int SF_ARCHIVED ; 
 int UF_HIDDEN ; 
 int /*<<< orphan*/  FUNC9 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int VNODE_ATTR_va_flags ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC15 (struct nfsmount*) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,struct nfsm_chain*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct nfsmount*,int*,struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC20 (int*,struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC21 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,struct nfsm_chain*,int*,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int,struct nfsm_chain*,struct vnode_attr*,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC26 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int,struct nfsm_chain*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC29 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC30 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC31 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC32 (int,struct nfsm_chain*,int*,int) ; 
 int /*<<< orphan*/  FUNC33 (int,struct nfsm_chain*,TYPE_2__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC34 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC35 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_data_size ; 
 int /*<<< orphan*/  va_flags ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_guuid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  va_uuuid ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 

int
FUNC40(
	nfsnode_t np,
	struct vnode_attr *vap,
	vfs_context_t ctx)
{
	struct nfsmount *nmp = FUNC4(np);
	int error = 0, setattr_error = 0, lockerror = ENOENT, status, nfsvers, numops;
	u_int64_t xid, nextxid;
	struct nfsm_chain nmreq, nmrep;
	uint32_t bitmap[NFS_ATTR_BITMAP_LEN], bmlen;
	uint32_t getbitmap[NFS_ATTR_BITMAP_LEN];
	uint32_t setbitmap[NFS_ATTR_BITMAP_LEN];
	nfs_stateid stateid;
	struct nfsreq_secinfo_args si;

	if (FUNC15(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	if (FUNC10(vap, va_flags) && (vap->va_flags & ~(SF_ARCHIVED|UF_HIDDEN))) {
		/* we don't support setting unsupported flags (duh!) */
		if (vap->va_active & ~VNODE_ATTR_va_flags)
			return (EINVAL);	/* return EINVAL if other attributes also set */
		else
			return (ENOTSUP);	/* return ENOTSUP for chflags(2) */
	}

	/* don't bother requesting some changes if they don't look like they are changing */
	if (FUNC10(vap, va_uid) && (vap->va_uid == np->n_vattr.nva_uid))
		FUNC9(vap, va_uid);
	if (FUNC10(vap, va_gid) && (vap->va_gid == np->n_vattr.nva_gid))
		FUNC9(vap, va_gid);
	if (FUNC10(vap, va_uuuid) && FUNC11(&vap->va_uuuid, &np->n_vattr.nva_uuuid))
		FUNC9(vap, va_uuuid);
	if (FUNC10(vap, va_guuid) && FUNC11(&vap->va_guuid, &np->n_vattr.nva_guuid))
		FUNC9(vap, va_guuid);

tryagain:
	/* do nothing if no attributes will be sent */
	FUNC19(nmp, bitmap, vap);
	if (!bitmap[0] && !bitmap[1])
		return (0);

	FUNC3(&si, np, NULL, 0, NULL, 0);
	FUNC34(&nmreq);
	FUNC34(&nmrep);

	/*
	 * Prepare GETATTR bitmap: if we are setting the ACL or mode, we
	 * need to invalidate any cached ACL.  And if we had an ACL cached,
	 * we might as well also fetch the new value.
	 */
	FUNC7(nfs_getattr_bitmap, getbitmap);
	if (FUNC5(bitmap, NFS_FATTR_ACL) ||
	    FUNC5(bitmap, NFS_FATTR_MODE)) {
		if (FUNC1(np))
			FUNC6(getbitmap, NFS_FATTR_ACL);
		FUNC0(np);
	}

	// PUTFH, SETATTR, GETATTR
	numops = 3;
	FUNC28(error, &nmreq, 40 * NFSX_UNSIGNED);
	FUNC24(error, &nmreq, "setattr", nmp->nm_minor_vers, numops);
	numops--;
	FUNC22(error, &nmreq, NFS_OP_PUTFH);
	FUNC26(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC22(error, &nmreq, NFS_OP_SETATTR);
	if (FUNC10(vap, va_data_size))
		FUNC13(np, FUNC38(ctx), FUNC39(ctx), &stateid);
	else
		stateid.seqid = stateid.other[0] = stateid.other[1] = stateid.other[2] = 0;
	FUNC27(error, &nmreq, &stateid);
	FUNC25(error, &nmreq, vap, nmp);
	numops--;
	FUNC22(error, &nmreq, NFS_OP_GETATTR);
	FUNC23(error, &nmreq, getbitmap, nmp, np);
	FUNC29(error, &nmreq);
	FUNC21(error, (numops == 0), EPROTO);
	FUNC37(error);
	error = FUNC18(np, NULL, &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

	if ((lockerror = FUNC16(np)))
		error = lockerror;
	FUNC36(error, &nmrep);
	FUNC31(error, &nmrep, numops);
	FUNC35(error, &nmrep, NFS_OP_PUTFH);
	FUNC37(error);
	FUNC35(error, &nmrep, NFS_OP_SETATTR);
	FUNC37(error == EBADRPC);
	setattr_error = error;
	error = 0;
	bmlen = NFS_ATTR_BITMAP_LEN;
	FUNC32(error, &nmrep, setbitmap, bmlen);
	if (!error) {
		if (FUNC10(vap, va_data_size) && (np->n_vattr.nva_flags & NFS_FFLAG_IS_ATTR))
			FUNC12(&np->n_lastio);
		FUNC20(setbitmap, vap);
		error = setattr_error;
	}
	FUNC35(error, &nmrep, NFS_OP_GETATTR);
	FUNC33(error, &nmrep, np, nfsvers, &xid);
	if (error)
		FUNC2(np);
	/*
	 * We just changed the attributes and we want to make sure that we
	 * see the latest attributes.  Get the next XID.  If it's not the
	 * next XID after the SETATTR XID, then it's possible that another
	 * RPC was in flight at the same time and it might put stale attributes
	 * in the cache.  In that case, we invalidate the attributes and set
	 * the attribute cache XID to guarantee that newer attributes will
	 * get loaded next.
	 */
	nextxid = 0;
	FUNC14(&nextxid);
	if (nextxid != (xid + 1)) {
		np->n_xid = nextxid;
		FUNC2(np);
	}
nfsmout:
	if (!lockerror)
		FUNC17(np);
	FUNC30(&nmreq);
	FUNC30(&nmrep);
	if ((setattr_error == EINVAL) && FUNC10(vap, va_acl) && FUNC10(vap, va_mode) && !FUNC8(nmp, ACLONLY)) {
		/*
		 * Some server's may not like ACL/mode combos that get sent.
		 * If it looks like that's what the server choked on, try setting
		 * just the ACL and not the mode (unless it looks like everything
		 * but mode was already successfully set).
		 */
		if (((bitmap[0] & setbitmap[0]) != bitmap[0]) ||
		    ((bitmap[1] & (setbitmap[1]|NFS_FATTR_MODE)) != bitmap[1])) {
			FUNC9(vap, va_mode);
			error = 0;
			goto tryagain;
		}
	}
	return (error);
}