#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ uint32_t ;
struct nfs_open_file {scalar_t__ nof_access; scalar_t__ nof_deny; int nof_rw; int nof_d_rw; scalar_t__ nof_w_dw; scalar_t__ nof_d_w_dw; scalar_t__ nof_w_drw; scalar_t__ nof_d_w_drw; int nof_opencnt; int nof_flags; TYPE_1__* nof_owner; int /*<<< orphan*/  nof_lock; scalar_t__ nof_d_rw_drw; scalar_t__ nof_rw_drw; scalar_t__ nof_d_r_drw; scalar_t__ nof_r_drw; scalar_t__ nof_d_rw_dw; scalar_t__ nof_rw_dw; scalar_t__ nof_d_r_dw; scalar_t__ nof_r_dw; int /*<<< orphan*/  nof_d_w; int /*<<< orphan*/  nof_w; int /*<<< orphan*/  nof_d_r; int /*<<< orphan*/  nof_r; scalar_t__ nof_mmap_deny; scalar_t__ nof_mmap_access; int /*<<< orphan*/  nof_creator; } ;
struct nfs_lock_owner {int dummy; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;
struct TYPE_4__ {scalar_t__ nm_vers; } ;
struct TYPE_3__ {int /*<<< orphan*/  noo_cred; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int NFSERR_LOCKS_HELD ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int NFS_OPEN_FILE_CREATE ; 
 int NFS_OPEN_FILE_LOST ; 
 scalar_t__ NFS_OPEN_SHARE_ACCESS_BOTH ; 
 scalar_t__ NFS_OPEN_SHARE_ACCESS_WRITE ; 
 scalar_t__ NFS_OPEN_SHARE_DENY_NONE ; 
 scalar_t__ NFS_OPEN_SHARE_DENY_WRITE ; 
 scalar_t__ NFS_VER4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_open_file*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nfs_open_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct nfs_open_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct nfs_lock_owner*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs_lock_owner* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_lock_owner*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_open_file*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_open_file*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_open_file*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(
	nfsnode_t np,
	struct nfs_open_file *nofp,
	uint32_t accessMode,
	uint32_t denyMode,
	vfs_context_t ctx)
{
	struct nfs_lock_owner *nlop;
	int error = 0, changed = 0, delegated = 0, closed = 0, downgrade = 0;
	uint32_t newAccessMode, newDenyMode;
	
	/* warn if modes don't match current state */
	if (((accessMode & nofp->nof_access) != accessMode) || ((denyMode & nofp->nof_deny) != denyMode))
		FUNC1(np, "nfs_close: mode mismatch %d %d, current %d %d, %d",
			accessMode, denyMode, nofp->nof_access, nofp->nof_deny,
			FUNC2(nofp->nof_owner->noo_cred));

	/*
	 * If we're closing a write-only open, we may not have a write-only count
	 * if we also grabbed read access.  So, check the read-write count.
	 */
	if (denyMode == NFS_OPEN_SHARE_DENY_NONE) {
		if ((accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) &&
		    (nofp->nof_w == 0) && (nofp->nof_d_w == 0) &&
		    (nofp->nof_rw || nofp->nof_d_rw))
			accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
	} else if (denyMode == NFS_OPEN_SHARE_DENY_WRITE) {
		if ((accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) &&
		    (nofp->nof_w_dw == 0) && (nofp->nof_d_w_dw == 0) &&
		    (nofp->nof_rw_dw || nofp->nof_d_rw_dw))
			accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
	} else { /* NFS_OPEN_SHARE_DENY_BOTH */
		if ((accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) &&
		    (nofp->nof_w_drw == 0) && (nofp->nof_d_w_drw == 0) &&
		    (nofp->nof_rw_drw || nofp->nof_d_rw_drw))
			accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
	}

	FUNC13(nofp, accessMode, denyMode, &newAccessMode, &newDenyMode, &delegated);
	if ((newAccessMode != nofp->nof_access) || (newDenyMode != nofp->nof_deny))
		changed = 1;
	else
		changed = 0;

	if (FUNC0(np)->nm_vers < NFS_VER4) /* NFS v2/v3 closes simply need to remove the open. */
		goto v3close;

	if ((newAccessMode == 0) || (nofp->nof_opencnt == 1)) {
		/*
		 * No more access after this close, so clean up and close it.
		 * Don't send a close RPC if we're closing a delegated open.
		 */
		FUNC14(np);
		closed = 1;
		if (!delegated && !(nofp->nof_flags & NFS_OPEN_FILE_LOST))
			error = FUNC6(np, nofp, FUNC16(ctx), FUNC17(ctx), 0);
		if (error == NFSERR_LOCKS_HELD) {
			/*
			 * Hmm... the server says we have locks we need to release first
			 * Find the lock owner and try to unlock everything.
			 */
			nlop = FUNC9(np, FUNC15(ctx), 0);
			if (nlop) {
				FUNC8(np, nlop, F_WRLCK, 0, UINT64_MAX,
					0, FUNC16(ctx), FUNC17(ctx));
				FUNC10(nlop);
			}
			error = FUNC6(np, nofp, FUNC16(ctx), FUNC17(ctx), 0);
		}
	} else if (changed) {
		/*
		 * File is still open but with less access, so downgrade the open.
		 * Don't send a downgrade RPC if we're closing a delegated open.
		 */
		if (!delegated && !(nofp->nof_flags & NFS_OPEN_FILE_LOST)) {
			downgrade = 1;
			/*
			 * If we have delegated opens, we should probably claim them before sending
			 * the downgrade because the server may not know the open we are downgrading to.
			 */
			if (nofp->nof_d_rw_drw || nofp->nof_d_w_drw || nofp->nof_d_r_drw ||
			    nofp->nof_d_rw_dw || nofp->nof_d_w_dw || nofp->nof_d_r_dw ||
			    nofp->nof_d_rw || nofp->nof_d_w || nofp->nof_d_r)
				FUNC5(nofp, 0);
			/* need to remove the open before sending the downgrade */
			FUNC12(nofp, accessMode, denyMode);
			error = FUNC7(np, nofp, ctx);
			if (error) /* Hmm.. that didn't work. Add the open back in. */
				FUNC11(nofp, accessMode, denyMode, delegated);
		}
	}

	if (error) {
		FUNC1(np, "nfs_close: error %d, %d", error, FUNC2(nofp->nof_owner->noo_cred));
		return (error);
	}

v3close:
	if (!downgrade)
		FUNC12(nofp, accessMode, denyMode);

	if (closed) {
		FUNC3(&nofp->nof_lock);
		if (nofp->nof_r || nofp->nof_d_r || nofp->nof_w || nofp->nof_d_w || nofp->nof_d_rw ||
		    (nofp->nof_rw && !((nofp->nof_flags & NFS_OPEN_FILE_CREATE) && !nofp->nof_creator && (nofp->nof_rw == 1))) ||
		    nofp->nof_r_dw || nofp->nof_d_r_dw || nofp->nof_w_dw || nofp->nof_d_w_dw ||
		    nofp->nof_rw_dw || nofp->nof_d_rw_dw || nofp->nof_r_drw || nofp->nof_d_r_drw ||
		    nofp->nof_w_drw || nofp->nof_d_w_drw || nofp->nof_rw_drw || nofp->nof_d_rw_drw)
			FUNC1(np, "nfs_close: unexpected count: %u.%u %u.%u %u.%u dw %u.%u %u.%u %u.%u drw %u.%u %u.%u %u.%u flags 0x%x, %d",
				nofp->nof_r, nofp->nof_d_r, nofp->nof_w, nofp->nof_d_w,
				nofp->nof_rw, nofp->nof_d_rw, nofp->nof_r_dw, nofp->nof_d_r_dw,
				nofp->nof_w_dw, nofp->nof_d_w_dw, nofp->nof_rw_dw, nofp->nof_d_rw_dw,
				nofp->nof_r_drw, nofp->nof_d_r_drw, nofp->nof_w_drw, nofp->nof_d_w_drw,
				nofp->nof_rw_drw, nofp->nof_d_rw_drw, nofp->nof_flags,
				FUNC2(nofp->nof_owner->noo_cred));
		/* clear out all open info, just to be safe */
		nofp->nof_access = nofp->nof_deny = 0;
		nofp->nof_mmap_access = nofp->nof_mmap_deny = 0;
		nofp->nof_r = nofp->nof_d_r = 0;
		nofp->nof_w = nofp->nof_d_w = 0;
		nofp->nof_rw = nofp->nof_d_rw = 0;
		nofp->nof_r_dw = nofp->nof_d_r_dw = 0;
		nofp->nof_w_dw = nofp->nof_d_w_dw = 0;
		nofp->nof_rw_dw = nofp->nof_d_rw_dw = 0;
		nofp->nof_r_drw = nofp->nof_d_r_drw = 0;
		nofp->nof_w_drw = nofp->nof_d_w_drw = 0;
		nofp->nof_rw_drw = nofp->nof_d_rw_drw = 0;
		nofp->nof_flags &= ~NFS_OPEN_FILE_CREATE;
		FUNC4(&nofp->nof_lock);
		/* XXX we may potentially want to clean up idle/unused open file structures */
	}
	if (nofp->nof_flags & NFS_OPEN_FILE_LOST) {
		error = EIO;
		FUNC1(np, "nfs_close: LOST%s, %d", !nofp->nof_opencnt ? " (last)" : "",
			FUNC2(nofp->nof_owner->noo_cred));
	}
		
	return (error);
}