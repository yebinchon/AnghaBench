#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnop_mmap_args {int a_fflags; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_context; } ;
struct nfsmount {scalar_t__ nm_vers; scalar_t__ nm_curdeadtimeout; scalar_t__ nm_deadtimeout; int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_mappers; scalar_t__ nm_deadto_start; int /*<<< orphan*/  nm_state; } ;
struct nfs_open_owner {int /*<<< orphan*/  noo_cred; } ;
struct nfs_open_file {int nof_flags; int nof_access; int nof_deny; int nof_mmap_access; int nof_mmap_deny; TYPE_1__* nof_owner; scalar_t__ nof_rw_drw; scalar_t__ nof_rw_dw; scalar_t__ nof_rw; scalar_t__ nof_d_rw_drw; scalar_t__ nof_d_rw_dw; scalar_t__ nof_d_rw; scalar_t__ nof_r_drw; scalar_t__ nof_r_dw; scalar_t__ nof_r; scalar_t__ nof_d_r_drw; scalar_t__ nof_d_r_dw; scalar_t__ nof_d_r; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_11__ {int n_flag; } ;
struct TYPE_10__ {int /*<<< orphan*/  noo_cred; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  NFSSTA_SQUISHY ; 
 int NFS_OPEN_FILE_LOST ; 
 int NFS_OPEN_FILE_NEEDCLOSE ; 
 int NFS_OPEN_FILE_REOPEN ; 
 int NFS_OPEN_SHARE_ACCESS_BOTH ; 
 int NFS_OPEN_SHARE_ACCESS_READ ; 
 int NFS_OPEN_SHARE_ACCESS_WRITE ; 
 int NFS_OPEN_SHARE_DENY_BOTH ; 
 int NFS_OPEN_SHARE_DENY_NONE ; 
 int NFS_OPEN_SHARE_DENY_WRITE ; 
 scalar_t__ NFS_VER4 ; 
 int NISMAPPED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int,int /*<<< orphan*/ ,...) ; 
 int NREVOKE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,struct nfs_open_file*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nfs_open_file*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,struct nfs_open_file*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct nfsmount*,int) ; 
 int FUNC12 (struct nfsmount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_open_file*,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nfs_open_file*) ; 
 int FUNC17 (TYPE_2__*,struct nfs_open_owner*,struct nfs_open_file**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct nfs_open_file*,int /*<<< orphan*/ *) ; 
 struct nfs_open_owner* FUNC19 (struct nfsmount*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct nfs_open_owner*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

int
FUNC25(
	struct vnop_mmap_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		int a_fflags;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	vnode_t vp = ap->a_vp;
	nfsnode_t np = FUNC1(vp);
	int error = 0, accessMode, denyMode, delegated;
	struct nfsmount *nmp;
	struct nfs_open_owner *noop = NULL;
	struct nfs_open_file *nofp = NULL;

	nmp = FUNC2(vp);
	if (FUNC9(nmp))
		return (ENXIO);

	if (!FUNC24(vp) || !(ap->a_fflags & (PROT_READ|PROT_WRITE)))
		return (EINVAL);
	if (np->n_flag & NREVOKE)
		return (EIO);

	/*
	 * fflags contains some combination of: PROT_READ, PROT_WRITE
	 * Since it's not possible to mmap() without having the file open for reading,
	 * read access is always there (regardless if PROT_READ is not set).
	 */
	accessMode = NFS_OPEN_SHARE_ACCESS_READ;
	if (ap->a_fflags & PROT_WRITE)
		accessMode |= NFS_OPEN_SHARE_ACCESS_WRITE;
	denyMode = NFS_OPEN_SHARE_DENY_NONE;

	noop = FUNC19(nmp, FUNC23(ctx), 1);
	if (!noop)
		return (ENOMEM);

restart:
	error = FUNC12(nmp, NULL);
	if (error) {
		FUNC20(noop);
		return (error);
	}
	if (np->n_flag & NREVOKE) {
		error = EIO;
		FUNC11(nmp, 0);
		FUNC20(noop);
		return (error);
	}

	error = FUNC17(np, noop, &nofp, 0, 0, 1);
	if (error || (!error && (nofp->nof_flags & NFS_OPEN_FILE_LOST))) {
		FUNC0(np, "nfs_vnop_mmap: no open file for owner, error %d, %d", error, FUNC3(noop->noo_cred));
		error = EPERM;
	}
	if (!error && (nofp->nof_flags & NFS_OPEN_FILE_REOPEN)) {
		FUNC11(nmp, 0);
		error = FUNC7(nofp, NULL);
		nofp = NULL;
		if (!error)
			goto restart;
	}
	if (!error)
		error = FUNC18(nofp, NULL);
	if (error) {
		nofp = NULL;
		goto out;
	}

	/*
	 * The open reference for mmap must mirror an existing open because
	 * we may need to reclaim it after the file is closed.
	 * So grab another open count matching the accessMode passed in.
	 * If we already had an mmap open, prefer read/write without deny mode.
	 * This means we may have to drop the current mmap open first.
	 *
	 * N.B. We should have an open for the mmap, because, mmap was
	 * called on an open descriptor, or we've created an open for read
	 * from reading the first page for execve. However, if we piggy
	 * backed on an existing NFS_OPEN_SHARE_ACCESS_READ/NFS_OPEN_SHARE_DENY_NONE
	 * that open may have closed.
	 */

	if (!(nofp->nof_access & NFS_OPEN_SHARE_ACCESS_READ)) {
		if (nofp->nof_flags & NFS_OPEN_FILE_NEEDCLOSE) {
			/* We shouldn't get here. We've already open the file for execve */
			FUNC0(np, "nfs_vnop_mmap: File already needs close access: 0x%x, cred: %d thread: %lld",
			   nofp->nof_access, FUNC3(nofp->nof_owner->noo_cred), FUNC21(FUNC22(ctx)));
		}
		/*
		 * mmapings for execve are just for read. Get out with EPERM if the accessMode is not ACCESS_READ
		 * or the access would be denied. Other accesses should have an open descriptor for the mapping.
		 */
		if (accessMode != NFS_OPEN_SHARE_ACCESS_READ || (accessMode & nofp->nof_deny)) {
			/* not asking for just read access -> fail */
			error = EPERM;
			goto out;
		}
		/* we don't have the file open, so open it for read access */
		if (nmp->nm_vers < NFS_VER4) {
			/* NFS v2/v3 opens are always allowed - so just add it. */
			FUNC15(nofp, NFS_OPEN_SHARE_ACCESS_READ, NFS_OPEN_SHARE_DENY_NONE, 0);
			error = 0;
		} else {
			error = FUNC6(np, nofp, NFS_OPEN_SHARE_ACCESS_READ, NFS_OPEN_SHARE_DENY_NONE, ctx);
		}
		if (!error)
			nofp->nof_flags |= NFS_OPEN_FILE_NEEDCLOSE;
		if (error)
			goto out;
	}

	/* determine deny mode for open */
	if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH) {
		if (nofp->nof_d_rw || nofp->nof_d_rw_dw || nofp->nof_d_rw_drw) {
			delegated = 1;
			if (nofp->nof_d_rw)
				denyMode = NFS_OPEN_SHARE_DENY_NONE;
			else if (nofp->nof_d_rw_dw)
				denyMode = NFS_OPEN_SHARE_DENY_WRITE;
			else if (nofp->nof_d_rw_drw)
				denyMode = NFS_OPEN_SHARE_DENY_BOTH;
		} else if (nofp->nof_rw || nofp->nof_rw_dw || nofp->nof_rw_drw) {
			delegated = 0;
			if (nofp->nof_rw)
				denyMode = NFS_OPEN_SHARE_DENY_NONE;
			else if (nofp->nof_rw_dw)
				denyMode = NFS_OPEN_SHARE_DENY_WRITE;
			else if (nofp->nof_rw_drw)
				denyMode = NFS_OPEN_SHARE_DENY_BOTH;
		} else {
			error = EPERM;
		}
	} else { /* NFS_OPEN_SHARE_ACCESS_READ */
		if (nofp->nof_d_r || nofp->nof_d_r_dw || nofp->nof_d_r_drw) {
			delegated = 1;
			if (nofp->nof_d_r)
				denyMode = NFS_OPEN_SHARE_DENY_NONE;
			else if (nofp->nof_d_r_dw)
				denyMode = NFS_OPEN_SHARE_DENY_WRITE;
			else if (nofp->nof_d_r_drw)
				denyMode = NFS_OPEN_SHARE_DENY_BOTH;
		} else if (nofp->nof_r || nofp->nof_r_dw || nofp->nof_r_drw) {
			delegated = 0;
			if (nofp->nof_r)
				denyMode = NFS_OPEN_SHARE_DENY_NONE;
			else if (nofp->nof_r_dw)
				denyMode = NFS_OPEN_SHARE_DENY_WRITE;
			else if (nofp->nof_r_drw)
				denyMode = NFS_OPEN_SHARE_DENY_BOTH;
		} else if (nofp->nof_d_rw || nofp->nof_d_rw_dw || nofp->nof_d_rw_drw) {
			/*
			 * This clause and the one below is to co-opt a read write access
			 * for a read only mmaping. We probably got here in that an
			 * existing rw open for an executable file already exists.
			 */
			delegated = 1;
			accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
			if (nofp->nof_d_rw)
				denyMode = NFS_OPEN_SHARE_DENY_NONE;
			else if (nofp->nof_d_rw_dw)
				denyMode = NFS_OPEN_SHARE_DENY_WRITE;
			else if (nofp->nof_d_rw_drw)
				denyMode = NFS_OPEN_SHARE_DENY_BOTH;
		} else if (nofp->nof_rw || nofp->nof_rw_dw || nofp->nof_rw_drw) {
			delegated = 0;
			accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
			if (nofp->nof_rw)
				denyMode = NFS_OPEN_SHARE_DENY_NONE;
			else if (nofp->nof_rw_dw)
				denyMode = NFS_OPEN_SHARE_DENY_WRITE;
			else if (nofp->nof_rw_drw)
				denyMode = NFS_OPEN_SHARE_DENY_BOTH;
		} else {
			error = EPERM;
		}
	}
	if (error) /* mmap mode without proper open mode */
		goto out;

	/*
	 * If the existing mmap access is more than the new access OR the
	 * existing access is the same and the existing deny mode is less,
	 * then we'll stick with the existing mmap open mode.
	 */
	if ((nofp->nof_mmap_access > accessMode) ||
	    ((nofp->nof_mmap_access == accessMode) && (nofp->nof_mmap_deny <= denyMode)))
		goto out;

	/* update mmap open mode */
	if (nofp->nof_mmap_access) {
		error = FUNC8(np, nofp, nofp->nof_mmap_access, nofp->nof_mmap_deny, ctx);
		if (error) {
			if (!FUNC10(error))
				FUNC0(np, "nfs_vnop_mmap: close of previous mmap mode failed: %d, %d", error, FUNC3(nofp->nof_owner->noo_cred));
			FUNC0(np, "nfs_vnop_mmap: update, close error %d, %d", error, FUNC3(nofp->nof_owner->noo_cred));
			goto out;
		}
		nofp->nof_mmap_access = nofp->nof_mmap_deny = 0;
	}

	FUNC15(nofp, accessMode, denyMode, delegated);
	nofp->nof_mmap_access = accessMode;
	nofp->nof_mmap_deny = denyMode;

out:
	if (nofp)
		FUNC16(nofp);
	if (FUNC11(nmp, error)) {
		nofp = NULL;
		goto restart;
	}
	if (noop)
		FUNC20(noop);

	if (!error) {
		int ismapped = 0;
		FUNC13(np);
		if ((np->n_flag & NISMAPPED) == 0) {
			np->n_flag |= NISMAPPED;
			ismapped = 1;
		}
		FUNC14(np);
		if (ismapped) {
			FUNC4(&nmp->nm_lock);
			nmp->nm_state &= ~NFSSTA_SQUISHY;
			nmp->nm_curdeadtimeout = nmp->nm_deadtimeout;
			if (nmp->nm_curdeadtimeout <= 0)
				nmp->nm_deadto_start = 0;
			nmp->nm_mappers++;
			FUNC5(&nmp->nm_lock);
		}
	}

	return (error);
}