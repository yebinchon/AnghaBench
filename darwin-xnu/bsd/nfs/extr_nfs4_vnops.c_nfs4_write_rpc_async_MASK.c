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
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsreq_cbinfo {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  nfs_stateid ;
typedef  int /*<<< orphan*/  mount_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_10__ {int nva_flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int MNT_ASYNC ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct nfsmount* FUNC2 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 size_t NFS_OP_GETATTR ; 
 size_t NFS_OP_PUTFH ; 
 size_t NFS_OP_WRITE ; 
 int NFS_WRITE_UNSTABLE ; 
 scalar_t__ nfs_allow_async ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,struct nfsreq_cbinfo*,struct nfsreq**) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct nfsm_chain*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC17 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 

int
FUNC21(
	nfsnode_t np,
	uio_t uio,
	size_t len,
	thread_t thd,
	kauth_cred_t cred,
	int iomode,
	struct nfsreq_cbinfo *cb,
	struct nfsreq **reqp)
{
	struct nfsmount *nmp;
	mount_t mp;
	int error = 0, nfsvers, numops;
	nfs_stateid stateid;
	struct nfsm_chain nmreq;
	struct nfsreq_secinfo_args si;

	nmp = FUNC2(np);
	if (FUNC4(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	/* for async mounts, don't bother sending sync write requests */
	if ((iomode != NFS_WRITE_UNSTABLE) && nfs_allow_async &&
	    ((mp = FUNC1(np))) && (FUNC20(mp) & MNT_ASYNC))
		iomode = NFS_WRITE_UNSTABLE;

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC17(&nmreq);

	// PUTFH, WRITE, GETATTR
	numops = 3;
	FUNC14(error, &nmreq, 25 * NFSX_UNSIGNED + len);
	FUNC10(error, &nmreq, "write", nmp->nm_minor_vers, numops);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_PUTFH);
	FUNC11(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_WRITE);
	FUNC3(np, thd, cred, &stateid);
	FUNC12(error, &nmreq, &stateid);
	FUNC8(error, &nmreq, FUNC19(uio));
	FUNC7(error, &nmreq, iomode);
	FUNC7(error, &nmreq, len);
	if (!error)
		error = FUNC13(&nmreq, uio, len);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_GETATTR);
	FUNC9(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	FUNC15(error, &nmreq);
	FUNC6(error, (numops == 0), EPROTO);
	FUNC18(error);

	error = FUNC5(np, NULL, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, 0, cb, reqp);
nfsmout:
	FUNC16(&nmreq);
	return (error);
}