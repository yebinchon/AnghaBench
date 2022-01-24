#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_8__ {scalar_t__ n_size; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int EBADRPC ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  NFSPROC_READLINK ; 
 struct nfsmount* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NFS_VER2 ; 
 int NFS_VER3 ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int
FUNC15(nfsnode_t np, char *buf, uint32_t *buflenp, vfs_context_t ctx)
{
	struct nfsmount *nmp;
	int error = 0, lockerror = ENOENT, nfsvers, status;
	uint32_t len;
	u_int64_t xid;
	struct nfsm_chain nmreq, nmrep;

	nmp = FUNC0(np);
	if (FUNC2(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	FUNC12(&nmreq);
	FUNC12(&nmrep);

	FUNC7(error, &nmreq, FUNC1(nfsvers));
	FUNC6(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	FUNC8(error, &nmreq);
	FUNC14(error);
	error = FUNC5(np, NULL, &nmreq, NFSPROC_READLINK, ctx, NULL, &nmrep, &xid, &status);
	if ((lockerror = FUNC3(np)))
		error = lockerror;
	if (nfsvers == NFS_VER3)
		FUNC13(error, &nmrep, np, &xid);
	if (!error)
		error = status;
	FUNC10(error, &nmrep, len);
	FUNC14(error);
	if ((nfsvers == NFS_VER2) && (len > *buflenp)) {
		error = EBADRPC;
		goto nfsmout;
	}
	if (len >= *buflenp) {
		if (np->n_size && (np->n_size < *buflenp))
			len = np->n_size;
		else
			len = *buflenp - 1;
	}
	FUNC11(error, &nmrep, len, buf);
	if (!error)
		*buflenp = len;
nfsmout:
	if (!lockerror)
		FUNC4(np);
	FUNC9(&nmreq);
	FUNC9(&nmrep);
	return (error);
}