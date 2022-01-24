#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_8__ {int nva_flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  n_lastio; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENXIO ; 
 size_t FUNC0 (size_t,size_t) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFS_FFLAG_IS_ATTR ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsreq*) ; 
 int FUNC7 (struct nfsreq*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,size_t) ; 
 int FUNC10 (struct nfsm_chain*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*) ; 

int
FUNC15(
	nfsnode_t np,
	struct nfsreq *req,
	uio_t uio,
	size_t *lenp,
	int *eofp)
{
	struct nfsmount *nmp;
	int error = 0, lockerror, nfsvers, numops, status, eof = 0;
	size_t retlen = 0;
	u_int64_t xid;
	struct nfsm_chain nmrep;

	nmp = FUNC1(np);
	if (FUNC3(nmp)) {
		FUNC6(req);
		return (ENXIO);
	}
	nfsvers = nmp->nm_vers;

	FUNC12(&nmrep);

	error = FUNC7(req, &nmrep, &xid, &status);
	if (error == EINPROGRESS) /* async request restarted */
		return (error);

	if ((lockerror = FUNC4(np)))
		error = lockerror;
	FUNC14(error, &nmrep);
	FUNC9(error, &nmrep, numops);
	FUNC13(error, &nmrep, NFS_OP_PUTFH);
	FUNC13(error, &nmrep, NFS_OP_READ);
	FUNC9(error, &nmrep, eof);
	FUNC9(error, &nmrep, retlen);
	if (!error) {
		*lenp = FUNC0(retlen, *lenp);
		error = FUNC10(&nmrep, *lenp, uio);
	}
	FUNC13(error, &nmrep, NFS_OP_GETATTR);
	FUNC11(error, &nmrep, np, nfsvers, &xid);
	if (!lockerror)
		FUNC5(np);
	if (eofp) {
		if (!eof && !retlen)
			eof = 1;
		*eofp = eof;
	}
	FUNC8(&nmrep);
	if (np->n_vattr.nva_flags & NFS_FFLAG_IS_ATTR)
		FUNC2(&np->n_lastio);
	return (error);
}