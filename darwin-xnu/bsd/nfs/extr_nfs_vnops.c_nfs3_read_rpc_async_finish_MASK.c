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
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;

/* Variables and functions */
 int EBADRPC ; 
 int EINPROGRESS ; 
 int ENXIO ; 
 size_t FUNC0 (size_t,size_t) ; 
 struct nfsmount* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFSX_UNSIGNED ; 
 int NFS_VER2 ; 
 int NFS_VER3 ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsreq*) ; 
 int FUNC6 (struct nfsreq*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,size_t) ; 
 int FUNC10 (struct nfsm_chain*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int
FUNC15(
	nfsnode_t np,
	struct nfsreq *req,
	uio_t uio,
	size_t *lenp,
	int *eofp)
{
	int error = 0, lockerror, nfsvers, status, eof = 0;
	size_t retlen = 0;
	uint64_t xid;
	struct nfsmount *nmp;
	struct nfsm_chain nmrep;

	nmp = FUNC1(np);
	if (FUNC2(nmp)) {
		FUNC5(req);
		return (ENXIO);
	}
	nfsvers = nmp->nm_vers;

	FUNC12(&nmrep);

	error = FUNC6(req, &nmrep, &xid, &status);
	if (error == EINPROGRESS) /* async request restarted */
		return (error);

	if ((lockerror = FUNC3(np)))
		error = lockerror;
	if (nfsvers == NFS_VER3)
		FUNC13(error, &nmrep, np, &xid);
	if (!error)
		error = status;
	if (nfsvers == NFS_VER3) {
		FUNC7(error, &nmrep, NFSX_UNSIGNED);
		FUNC9(error, &nmrep, eof);
	} else {
		FUNC11(error, &nmrep, np, nfsvers, &xid);
	}
	if (!lockerror)
		FUNC4(np);
	FUNC9(error, &nmrep, retlen);
	if ((nfsvers == NFS_VER2) && (retlen > *lenp))
		error = EBADRPC;
	FUNC14(error);
	error = FUNC10(&nmrep, FUNC0(retlen, *lenp), uio);
	if (eofp) {
		if (nfsvers == NFS_VER3) {
			if (!eof && !retlen)
				eof = 1;
		} else if (retlen < *lenp) {
			eof = 1;
		}
		*eofp = eof;
	}
	*lenp = FUNC0(retlen, *lenp);
nfsmout:
	FUNC8(&nmrep);
	return (error);
}