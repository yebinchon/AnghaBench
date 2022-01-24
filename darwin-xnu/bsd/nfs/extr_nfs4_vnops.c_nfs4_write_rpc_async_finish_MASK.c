#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_int64_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; int nm_state; scalar_t__ nm_verf; int /*<<< orphan*/  nm_lock; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  mount_t ;
struct TYPE_9__ {int nva_flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  n_lastio; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENOENT ; 
 int ENXIO ; 
 int MNT_ASYNC ; 
 int NFSERR_IO ; 
 int NFSSTA_HASWRITEVERF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFS_FFLAG_IS_ATTR ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_WRITE ; 
 int NFS_WRITE_FILESYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_allow_async ; 
 scalar_t__ FUNC5 (struct nfsmount*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsreq*) ; 
 int FUNC9 (struct nfsreq*,struct nfsm_chain*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,TYPE_2__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(
	nfsnode_t np,
	struct nfsreq *req,
	int *iomodep,
	size_t *rlenp,
	uint64_t *wverfp)
{
	struct nfsmount *nmp;
	int error = 0, lockerror = ENOENT, nfsvers, numops, status;
	int committed = NFS_WRITE_FILESYNC;
	size_t rlen = 0;
	u_int64_t xid, wverf;
	mount_t mp;
	struct nfsm_chain nmrep;

	nmp = FUNC1(np);
	if (FUNC5(nmp)) {
		FUNC8(req);
		return (ENXIO);
	}
	nfsvers = nmp->nm_vers;

	FUNC14(&nmrep);

	error = FUNC9(req, &nmrep, &xid, &status);
	if (error == EINPROGRESS) /* async request restarted */
		return (error);
	nmp = FUNC1(np);
	if (FUNC5(nmp))
		error = ENXIO;
	if (!error && (lockerror = FUNC6(np)))
		error = lockerror;
	FUNC16(error, &nmrep);
	FUNC11(error, &nmrep, numops);
	FUNC15(error, &nmrep, NFS_OP_PUTFH);
	FUNC15(error, &nmrep, NFS_OP_WRITE);
	FUNC11(error, &nmrep, rlen);
	FUNC17(error);
	*rlenp = rlen;
	if (rlen <= 0)
		error = NFSERR_IO;
	FUNC11(error, &nmrep, committed);
	FUNC12(error, &nmrep, wverf);
	FUNC17(error);
	if (wverfp)
		*wverfp = wverf;
	FUNC2(&nmp->nm_lock);
	if (!(nmp->nm_state & NFSSTA_HASWRITEVERF)) {
		nmp->nm_verf = wverf;
		nmp->nm_state |= NFSSTA_HASWRITEVERF;
	} else if (nmp->nm_verf != wverf) {
		nmp->nm_verf = wverf;
	}
	FUNC3(&nmp->nm_lock);
	FUNC15(error, &nmrep, NFS_OP_GETATTR);
	FUNC13(error, &nmrep, np, nfsvers, &xid);
nfsmout:
	if (!lockerror)
		FUNC7(np);
	FUNC10(&nmrep);
	if ((committed != NFS_WRITE_FILESYNC) && nfs_allow_async &&
	    ((mp = FUNC0(np))) && (FUNC18(mp) & MNT_ASYNC))
		committed = NFS_WRITE_FILESYNC;
	*iomodep = committed;
	if (np->n_vattr.nva_flags & NFS_FFLAG_IS_ATTR)
		FUNC4(&np->n_lastio);
	return (error);
}