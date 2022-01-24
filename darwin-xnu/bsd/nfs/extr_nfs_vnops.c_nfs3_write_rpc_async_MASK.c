#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_cbinfo {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
typedef  int /*<<< orphan*/  mount_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_6__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENXIO ; 
 int MNT_ASYNC ; 
 int /*<<< orphan*/  NFSPROC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct nfsmount* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int NFSX_UNSIGNED ; 
 int NFS_VER3 ; 
 int NFS_WRITE_UNSTABLE ; 
 scalar_t__ nfs_allow_async ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsreq_cbinfo*,struct nfsreq**) ; 
 int /*<<< orphan*/  FUNC5 (int,struct nfsm_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nfsm_chain*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsm_chain*) ; 
 scalar_t__ FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 size_t FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

int
FUNC17(
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
	int error = 0, nfsvers;
	struct nfsm_chain nmreq;

	nmp = FUNC1(np);
	if (FUNC3(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	/* for async mounts, don't bother sending sync write requests */
	if ((iomode != NFS_WRITE_UNSTABLE) && nfs_allow_async &&
	    ((mp = FUNC0(np))) && (FUNC16(mp) & MNT_ASYNC))
		iomode = NFS_WRITE_UNSTABLE;

	FUNC12(&nmreq);
	FUNC9(error, &nmreq,
		FUNC2(nfsvers) + 5 * NFSX_UNSIGNED + FUNC13(len));
	FUNC7(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	if (nfsvers == NFS_VER3) {
		FUNC6(error, &nmreq, FUNC15(uio));
		FUNC5(error, &nmreq, len);
		FUNC5(error, &nmreq, iomode);
	} else {
		FUNC5(error, &nmreq, 0);
		FUNC5(error, &nmreq, FUNC15(uio));
		FUNC5(error, &nmreq, 0);
	}
	FUNC5(error, &nmreq, len);
	FUNC14(error);
	error = FUNC8(&nmreq, uio, len);
	FUNC10(error, &nmreq);
	FUNC14(error);
	error = FUNC4(np, NULL, &nmreq, NFSPROC_WRITE, thd, cred, NULL, 0, cb, reqp);
nfsmout:
	FUNC11(&nmreq);
	return (error);
}