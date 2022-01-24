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
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;
typedef  scalar_t__ mount_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NFSPROC_GETATTR ; 
 struct nfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NFS_VER2 ; 
 int NGA_MONITOR ; 
 int NGA_SOFT ; 
 int R_RECOVER ; 
 int R_SOFT ; 
 struct nfsmount* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (struct nfsm_chain*,int,struct nfs_vattr*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int
FUNC15(
	nfsnode_t np,
	mount_t mp,
	u_char *fhp,
	size_t fhsize,
	int flags,
	vfs_context_t ctx,
	struct nfs_vattr *nvap,
	u_int64_t *xidp)
{
	struct nfsmount *nmp = mp ? FUNC2(mp) : FUNC0(np);
	int error = 0, status, nfsvers, rpcflags = 0;
	struct nfsm_chain nmreq, nmrep;

	if (FUNC3(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	if (flags & NGA_MONITOR) /* vnode monitor requests should be soft */
		rpcflags = R_RECOVER;

	if (flags & NGA_SOFT) /* Return ETIMEDOUT if server not responding */
		rpcflags |= R_SOFT;

	FUNC11(&nmreq);
	FUNC11(&nmrep);

	FUNC8(error, &nmreq, FUNC1(nfsvers));
	if (nfsvers != NFS_VER2)
		FUNC6(error, &nmreq, fhsize);
	FUNC7(error, &nmreq, fhp, fhsize);
	FUNC9(error, &nmreq);
	FUNC12(error);
	error = FUNC5(np, mp, &nmreq, NFSPROC_GETATTR, 
			FUNC13(ctx), FUNC14(ctx),
			NULL, rpcflags, &nmrep, xidp, &status);
	if (!error)
		error = status;
	FUNC12(error);
	error = FUNC4(&nmrep, nfsvers, nvap);
nfsmout:
	FUNC10(&nmreq);
	FUNC10(&nmrep);
	return (error);
}