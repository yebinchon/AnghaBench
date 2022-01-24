#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnop_create_args {int /*<<< orphan*/ ** a_vpp; int /*<<< orphan*/ * a_dvp; struct vnode_attr* a_vap; struct componentname* a_cnp; int /*<<< orphan*/  a_context; } ;
struct vnode_attr {int va_vaflags; int va_mode; } ;
struct nfsmount {int dummy; } ;
struct nfs_open_owner {int dummy; } ;
struct nfs_open_file {int nof_flags; int /*<<< orphan*/  nof_creator; int /*<<< orphan*/  nof_stateid; } ;
struct componentname {int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  scalar_t__ nfsnode_t ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NFS_OPEN_CREATE ; 
 int NFS_OPEN_FILE_CREATE ; 
 int NFS_OPEN_FILE_LOST ; 
 int NFS_OPEN_FILE_POSIXLOCK ; 
 int NFS_OPEN_FILE_REOPEN ; 
 int /*<<< orphan*/  NFS_OPEN_NOCREATE ; 
 int NFS_OPEN_SHARE_ACCESS_BOTH ; 
 int NFS_OPEN_SHARE_DENY_NONE ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*) ; 
 scalar_t__ FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int VA_EXCLUSIVE ; 
 scalar_t__ VREG ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfsmount* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct nfs_open_file*,int /*<<< orphan*/ ,struct componentname*,struct vnode_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct nfs_open_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC12 (struct nfsmount*) ; 
 scalar_t__ FUNC13 (struct nfsmount*,int) ; 
 int FUNC14 (struct nfsmount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct nfs_open_file*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nfs_open_file*) ; 
 int /*<<< orphan*/  FUNC18 (struct nfs_open_file*) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct nfs_open_owner*,struct nfs_open_file**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (scalar_t__,struct nfs_open_owner*,struct nfs_open_file**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct nfs_open_file*,int /*<<< orphan*/ *) ; 
 struct nfs_open_owner* FUNC22 (struct nfsmount*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct nfs_open_owner*) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 

int
FUNC29(
	struct vnop_create_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_dvp;
		vnode_t *a_vpp;
		struct componentname *a_cnp;
		struct vnode_attr *a_vap;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	struct componentname *cnp = ap->a_cnp;
	struct vnode_attr *vap = ap->a_vap;
	vnode_t dvp = ap->a_dvp;
	vnode_t *vpp = ap->a_vpp;
	struct nfsmount *nmp;
	nfsnode_t np;
	int error = 0, busyerror = 0, accessMode, denyMode;
	struct nfs_open_owner *noop = NULL;
	struct nfs_open_file *newnofp = NULL, *nofp = NULL;

	nmp = FUNC5(dvp);
	if (FUNC12(nmp))
		return (ENXIO);

	if (vap)
		FUNC10(FUNC4(dvp), vap, ctx);

	noop = FUNC22(nmp, FUNC26(ctx), 1);
	if (!noop)
		return (ENOMEM);

restart:
	error = FUNC14(nmp, FUNC25(ctx));
	if (error) {
		FUNC23(noop);
		return (error);
	}

	/* grab a provisional, nodeless open file */
	error = FUNC19(NULL, noop, &newnofp, 0, 0, 1);
	if (!error && (newnofp->nof_flags & NFS_OPEN_FILE_LOST)) {
		FUNC24("nfs_vnop_create: LOST\n");
		error = EIO;
	}
	if (!error && (newnofp->nof_flags & NFS_OPEN_FILE_REOPEN)) {
		/* This shouldn't happen given that this is a new, nodeless nofp */
		FUNC13(nmp, 0);
		error = FUNC8(newnofp, FUNC25(ctx));
		FUNC18(newnofp);
		newnofp = NULL;
		if (!error)
			goto restart;
	}
	if (!error)
		error = FUNC21(newnofp, FUNC25(ctx));
	if (error) {
		if (newnofp)
			FUNC18(newnofp);
		newnofp = NULL;
		goto out;
	}

	/*
	 * We're just trying to create the file.
	 * We'll create/open it RW, and set NFS_OPEN_FILE_CREATE.
	 */
	accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
	denyMode = NFS_OPEN_SHARE_DENY_NONE;

	/* Do the open/create */
	error = FUNC7(newnofp, ctx, cnp, vap, dvp, vpp, NFS_OPEN_CREATE, accessMode, denyMode);
	if ((error == EACCES) && vap && !(vap->va_vaflags & VA_EXCLUSIVE) &&
	    FUNC2(vap, va_mode) && !(vap->va_mode & S_IWUSR)) {
		/*
		 * Hmm... it looks like we may have a situation where the request was
		 * retransmitted because we didn't get the first response which successfully
		 * created/opened the file and then the second time we were denied the open
		 * because the mode the file was created with doesn't allow write access.
		 *
		 * We'll try to work around this by temporarily updating the mode and
		 * retrying the open.
		 */
		struct vnode_attr vattr;

		/* first make sure it's there */
		int error2 = FUNC11(FUNC4(dvp), cnp->cn_nameptr, cnp->cn_namelen, ctx, &np);
		if (!error2 && np) {
			FUNC15(np);
			*vpp = FUNC0(np);
			if (FUNC28(FUNC0(np)) == VREG) {
				FUNC1(&vattr);
				FUNC3(&vattr, va_mode, (vap->va_mode | S_IWUSR));
				if (!FUNC9(np, &vattr, ctx)) {
					error2 = FUNC7(newnofp, ctx, cnp, NULL, dvp, vpp, NFS_OPEN_NOCREATE, accessMode, denyMode);
					FUNC1(&vattr);
					FUNC3(&vattr, va_mode, vap->va_mode);
					FUNC9(np, &vattr, ctx);
					if (!error2)
						error = 0;
				}
			}
			if (error) {
				FUNC27(*vpp);
				*vpp = NULL;
			}
		}
	}
	if (!error && !*vpp) {
		FUNC24("nfs4_open_rpc returned without a node?\n");
		/* Hmmm... with no node, we have no filehandle and can't close it */
		error = EIO;
	}
	if (error) {
		/* need to cleanup our temporary nofp */
		FUNC17(newnofp);
		FUNC18(newnofp);
		newnofp = NULL;
		goto out;
	}
	/* After we have a node, add our open file struct to the node */
	np = FUNC4(*vpp);
	FUNC16(newnofp, accessMode, denyMode, 0);
	nofp = newnofp;
	error = FUNC20(np, noop, &nofp, 0, 0, 0);
	if (error) {
		/* This shouldn't happen, because we passed in a new nofp to use. */
		FUNC24("nfs_open_file_find_internal failed! %d\n", error);
		goto out;
	} else if (nofp != newnofp) {
		/*
		 * Hmm... an open file struct already exists.
		 * Mark the existing one busy and merge our open into it.
		 * Then destroy the one we created.
		 * Note: there's no chance of an open confict because the
		 * open has already been granted.
		 */
		busyerror = FUNC21(nofp, NULL);
		FUNC16(nofp, accessMode, denyMode, 0);
		nofp->nof_stateid = newnofp->nof_stateid;
		if (newnofp->nof_flags & NFS_OPEN_FILE_POSIXLOCK)
			nofp->nof_flags |= NFS_OPEN_FILE_POSIXLOCK;
		FUNC17(newnofp);
		FUNC18(newnofp);
	}
	newnofp = NULL;
	/* mark the node as holding a create-initiated open */
	nofp->nof_flags |= NFS_OPEN_FILE_CREATE;
	nofp->nof_creator = FUNC6();
out:
	if (nofp && !busyerror)
		FUNC17(nofp);
	if (FUNC13(nmp, error)) {
		nofp = newnofp = NULL;
		busyerror = 0;
		goto restart;
	}
	if (noop)
		FUNC23(noop);
	return (error);
}