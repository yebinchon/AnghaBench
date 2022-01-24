#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
struct vnop_close_args {int a_fflag; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_context; } ;
struct nfsmount {int nm_vers; int nm_writers; int /*<<< orphan*/  nm_lock; } ;
struct nfs_open_owner {int /*<<< orphan*/  noo_cred; } ;
struct nfs_open_file {int nof_deny; int nof_flags; } ;
typedef  TYPE_1__* nfsnode_t ;
typedef  int /*<<< orphan*/  mount_t ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;
struct TYPE_13__ {int n_flag; int n_error; scalar_t__ n_openrefcnt; int /*<<< orphan*/  n_openlock; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int FHASLOCK ; 
 int FREAD ; 
 int FWRITE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int NFS_OPEN_FILE_REOPEN ; 
 int NFS_OPEN_SHARE_ACCESS_READ ; 
 int NFS_OPEN_SHARE_ACCESS_WRITE ; 
 int NFS_OPEN_SHARE_DENY_BOTH ; 
 int NFS_OPEN_SHARE_DENY_NONE ; 
 int NFS_OPEN_SHARE_DENY_READ ; 
 int NFS_OPEN_SHARE_DENY_WRITE ; 
 int NFS_VER2 ; 
 int NMODIFIED ; 
 int NNEEDINVALIDATE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  NUPDATESIZE ; 
 int NWRITEERR ; 
 int VREG ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 int V_IGNORE_WRITEERR ; 
 int V_SAVE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nfs_open_file*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,struct nfs_open_file*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nfsmount*,int) ; 
 int FUNC13 (struct nfsmount*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct nfs_open_file*) ; 
 int FUNC18 (TYPE_1__*,struct nfs_open_owner*,struct nfs_open_file**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct nfs_open_file*,int /*<<< orphan*/ *) ; 
 struct nfs_open_owner* FUNC20 (struct nfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct nfs_open_owner*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 

int
FUNC29(
	struct vnop_close_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		int a_fflag;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	vnode_t vp = ap->a_vp;
	nfsnode_t np = FUNC3(vp);
	struct nfsmount *nmp;
	int error = 0, error1, nfsvers;
	int fflag = ap->a_fflag;
	enum vtype vtype;
	int accessMode, denyMode;
	struct nfs_open_owner *noop = NULL;
	struct nfs_open_file *nofp = NULL;

	nmp = FUNC4(vp);
	if (!nmp)
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	vtype = FUNC28(vp);

	/* First, check if we need to update/flush/invalidate */
	if (FUNC0(np->n_flag, NUPDATESIZE))
		FUNC10(np, 0);
	FUNC15(np);
	if (np->n_flag & NNEEDINVALIDATE) {
		np->n_flag &= ~NNEEDINVALIDATE;
		FUNC16(np);
		FUNC23(vp, V_SAVE|V_IGNORE_WRITEERR, ctx, 1);
		FUNC15(np);
	}
	if ((vtype == VREG) && (np->n_flag & NMODIFIED) && (fflag & FWRITE)) {
		/* we're closing an open for write and the file is modified, so flush it */
		FUNC16(np);
		if (nfsvers != NFS_VER2)
			error = FUNC11(np, MNT_WAIT, FUNC24(ctx), 0);
		else
			error = FUNC23(vp, V_SAVE, ctx, 1);
		FUNC15(np);
		FUNC1(np);
	}
	if (np->n_flag & NWRITEERR) {
		np->n_flag &= ~NWRITEERR;
		error = np->n_error;
	}
	FUNC16(np);

	if (vtype != VREG) {
		/* Just mark that it was closed */
		FUNC6(&np->n_openlock);
		if (np->n_openrefcnt == 0) {
			if (fflag & (FREAD|FWRITE)) {
				FUNC2(np, "nfs_vnop_close: open reference underrun");
				error = EINVAL;
			}
		} else if (fflag & (FREAD|FWRITE)) {
			np->n_openrefcnt--;
		} else {
			/* No FREAD/FWRITE set - probably the final close */
			np->n_openrefcnt = 0;
		}
		FUNC7(&np->n_openlock);
		return (error);
	}
	error1 = error;

	/* fflag should contain some combination of: FREAD, FWRITE, FHASLOCK */
	accessMode = 0;
	if (fflag & FREAD)
		accessMode |= NFS_OPEN_SHARE_ACCESS_READ;
	if (fflag & FWRITE)
		accessMode |= NFS_OPEN_SHARE_ACCESS_WRITE;
// XXX It would be nice if we still had the O_EXLOCK/O_SHLOCK flags that were on the open
//	if (fflag & O_EXLOCK)
//		denyMode = NFS_OPEN_SHARE_DENY_BOTH;
//	else if (fflag & O_SHLOCK)
//		denyMode = NFS_OPEN_SHARE_DENY_WRITE;
//	else
//		denyMode = NFS_OPEN_SHARE_DENY_NONE;
#if 0  // Not yet
	if (fflag & FHASLOCK) {
		/* XXX assume FHASLOCK is for the deny mode and not flock */
		/* FHASLOCK flock will be unlocked in the close path, but the flag is not cleared. */
		if (nofp->nof_deny & NFS_OPEN_SHARE_DENY_READ)
			denyMode = NFS_OPEN_SHARE_DENY_BOTH;
		else if (nofp->nof_deny & NFS_OPEN_SHARE_DENY_WRITE)
			denyMode = NFS_OPEN_SHARE_DENY_WRITE;
		else
			denyMode = NFS_OPEN_SHARE_DENY_NONE;
	} else {
			denyMode = NFS_OPEN_SHARE_DENY_NONE;
	}
#else
	// XXX don't do deny modes just yet (and never do it for !v4)
	denyMode = NFS_OPEN_SHARE_DENY_NONE;
#endif

	if (!accessMode) {
		/*
		 * No mode given to close?
		 * Guess this is the final close.
		 * We should unlock all locks and close all opens.
		 */
		uint32_t writers;
		mount_t mp = FUNC27(vp);
		int force = (!mp || FUNC26(mp));

		writers = FUNC14(np);
		FUNC22(np, force);
		if (writers) {
			FUNC6(&nmp->nm_lock);
			if (writers > nmp->nm_writers) {
				FUNC2(np, "nfs_vnop_close: number of write opens for mount underrun. Node has %d"
				   " opens for write. Mount has total of %d opens for write\n", 
				   writers, nmp->nm_writers);
				nmp->nm_writers = 0;
			} else {
				nmp->nm_writers -= writers;
			}
			FUNC7(&nmp->nm_lock);
		}
		
		return (error);
	} else if (fflag & FWRITE) {
		FUNC6(&nmp->nm_lock);
		if (nmp->nm_writers == 0) {
			FUNC2(np, "nfs_vnop_close: removing open writer from mount, but mount has no files open for writing");
		} else {
			nmp->nm_writers--;
		}
		FUNC7(&nmp->nm_lock);
	}
	

	noop = FUNC20(nmp, FUNC25(ctx), 0);
	if (!noop) {
		// printf("nfs_vnop_close: can't get open owner!\n");
		return (EIO);
	}

restart:
	error = FUNC13(nmp, NULL);
	if (error) {
		FUNC21(noop);
		return (error);
	}

	error = FUNC18(np, noop, &nofp, 0, 0, 0);
	if (!error && (nofp->nof_flags & NFS_OPEN_FILE_REOPEN)) {
		FUNC12(nmp, 0);
		error = FUNC8(nofp, NULL);
		nofp = NULL;
		if (!error)
			goto restart;
	}
	if (error) {
		FUNC2(np, "nfs_vnop_close: no open file for owner, error %d, %d", error, FUNC5(noop->noo_cred));
		error = EBADF;
		goto out;
	}
	error = FUNC19(nofp, NULL);
	if (error) {
		nofp = NULL;
		goto out;
	}

	error = FUNC9(np, nofp, accessMode, denyMode, ctx);
	if (error)
		FUNC2(np, "nfs_vnop_close: close error %d, %d", error, FUNC5(noop->noo_cred));

out:
	if (nofp)
		FUNC17(nofp);
	if (FUNC12(nmp, error)) {
		nofp = NULL;
		goto restart;
	}
	if (!error)
		error = error1;
	if (error)
		FUNC2(np, "nfs_vnop_close: error %d, %d", error, FUNC5(noop->noo_cred));
	if (noop)
		FUNC21(noop);
	return (error);
}