#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_state; int nm_vers; scalar_t__ nm_verf; int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_12__ {int nva_flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*,scalar_t__,scalar_t__,int) ; 
 int NFSERR_STALEWRITEVERF ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC1 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NFSSTA_HASWRITEVERF ; 
 struct nfsmount* FUNC2 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 scalar_t__ NFS_OP_COMMIT ; 
 scalar_t__ NFS_OP_GETATTR ; 
 scalar_t__ NFS_OP_PUTFH ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC6 (struct nfsmount*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,struct nfsm_chain*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC18 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*,TYPE_2__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC23 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 

int
FUNC26(
	nfsnode_t np,
	uint64_t offset,
	uint64_t count,
	kauth_cred_t cred,
	uint64_t wverf)
{
	struct nfsmount *nmp;
	int error = 0, lockerror, status, nfsvers, numops;
	u_int64_t xid, newwverf;
	uint32_t count32;
	struct nfsm_chain nmreq, nmrep;
	struct nfsreq_secinfo_args si;

	nmp = FUNC2(np);
	FUNC0(521, np, offset, count, nmp ? nmp->nm_state : 0);
	if (FUNC6(nmp))
		return (ENXIO);
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);
	if (!(nmp->nm_state & NFSSTA_HASWRITEVERF))
		return (0);
	nfsvers = nmp->nm_vers;

	if (count > UINT32_MAX)
		count32 = 0;
	else
		count32 = count;

	FUNC1(&si, np, NULL, 0, NULL, 0);
	FUNC22(&nmreq);
	FUNC22(&nmrep);

	// PUTFH, COMMIT, GETATTR
	numops = 3;
	FUNC16(error, &nmreq, 19 * NFSX_UNSIGNED);
	FUNC14(error, &nmreq, "commit", nmp->nm_minor_vers, numops);
	numops--;
	FUNC11(error, &nmreq, NFS_OP_PUTFH);
	FUNC15(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC11(error, &nmreq, NFS_OP_COMMIT);
	FUNC12(error, &nmreq, offset);
	FUNC11(error, &nmreq, count32);
	numops--;
	FUNC11(error, &nmreq, NFS_OP_GETATTR);
	FUNC13(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	FUNC17(error, &nmreq);
	FUNC10(error, (numops == 0), EPROTO);
	FUNC25(error);
	error = FUNC9(np, NULL, &nmreq, NFSPROC4_COMPOUND,
			FUNC3(), cred, &si, 0, &nmrep, &xid, &status);

	if ((lockerror = FUNC7(np)))
		error = lockerror;
	FUNC24(error, &nmrep);
	FUNC19(error, &nmrep, numops);
	FUNC23(error, &nmrep, NFS_OP_PUTFH);
	FUNC23(error, &nmrep, NFS_OP_COMMIT);
	FUNC20(error, &nmrep, newwverf);
	FUNC23(error, &nmrep, NFS_OP_GETATTR);
	FUNC21(error, &nmrep, np, nfsvers, &xid);
	if (!lockerror)
		FUNC8(np);
	FUNC25(error);
	FUNC4(&nmp->nm_lock);
	if (nmp->nm_verf != newwverf)
		nmp->nm_verf = newwverf;
	if (wverf != newwverf)
		error = NFSERR_STALEWRITEVERF;
	FUNC5(&nmp->nm_lock);
nfsmout:
	FUNC18(&nmreq);
	FUNC18(&nmrep);
	return (error);
}