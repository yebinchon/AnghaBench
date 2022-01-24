#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int64_t ;
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct nfsmount {int nm_state; int nm_vers; scalar_t__ nm_verf; int /*<<< orphan*/  nm_lock; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_9__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,scalar_t__,scalar_t__,int) ; 
 int NFSERR_STALEWRITEVERF ; 
 int /*<<< orphan*/  NFSPROC_COMMIT ; 
 int NFSSTA_HASWRITEVERF ; 
 struct nfsmount* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_VER3 ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct nfsmount*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsm_chain*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,TYPE_1__*,struct timespec*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

int
FUNC20(
	nfsnode_t np,
	uint64_t offset,
	uint64_t count,
	kauth_cred_t cred,
	uint64_t wverf)
{
	struct nfsmount *nmp;
	int error = 0, lockerror, status, wccpostattr = 0, nfsvers;
	struct timespec premtime = { 0, 0 };
	u_int64_t xid, newwverf;
	uint32_t count32;
	struct nfsm_chain nmreq, nmrep;

	nmp = FUNC1(np);
	FUNC0(521, np, offset, count, nmp ? nmp->nm_state : 0);
	if (FUNC6(nmp))
		return (ENXIO);
	if (!(nmp->nm_state & NFSSTA_HASWRITEVERF))
		return (0);
	nfsvers = nmp->nm_vers;

	if (count > UINT32_MAX)
		count32 = 0;
	else
		count32 = count;

	FUNC18(&nmreq);
	FUNC18(&nmrep);

	FUNC13(error, &nmreq, FUNC2(NFS_VER3));
	FUNC12(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	FUNC11(error, &nmreq, offset);
	FUNC10(error, &nmreq, count32);
	FUNC14(error, &nmreq);
	FUNC19(error);
	error = FUNC9(np, NULL, &nmreq, NFSPROC_COMMIT,
			FUNC3(), cred, NULL, 0, &nmrep, &xid, &status);
	if ((lockerror = FUNC7(np)))
		error = lockerror;
	/* can we do anything useful with the wcc info? */
	FUNC17(error, &nmrep, np, &premtime, &wccpostattr, &xid);
	if (!lockerror)
		FUNC8(np);
	if (!error)
		error = status;
	FUNC16(error, &nmrep, newwverf);
	FUNC19(error);
	FUNC4(&nmp->nm_lock);
	if (nmp->nm_verf != newwverf)
		nmp->nm_verf = newwverf;
	if (wverf != newwverf)
		error = NFSERR_STALEWRITEVERF;
	FUNC5(&nmp->nm_lock);
nfsmout:
	FUNC15(&nmreq);
	FUNC15(&nmrep);
	return (error);
}