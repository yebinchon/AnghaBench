#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_state; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_13__ {int nva_flags; } ;
struct TYPE_14__ {int /*<<< orphan*/  n_flag; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int NFSERR_GRACE ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC1 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC2 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_REMOVE ; 
 int /*<<< orphan*/  NMODIFIED ; 
 scalar_t__ PZERO ; 
 int hz ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,char*,int,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 

int
FUNC24(
	nfsnode_t dnp,
	char *name,
	int namelen,
	thread_t thd,
	kauth_cred_t cred)
{
	int error = 0, lockerror = ENOENT, remove_error = 0, status;
	struct nfsmount *nmp;
	int nfsvers, numops;
	u_int64_t xid;
	struct nfsm_chain nmreq, nmrep;
	struct nfsreq_secinfo_args si;

	nmp = FUNC2(dnp);
	if (FUNC3(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);
	FUNC1(&si, dnp, NULL, 0, NULL, 0);
restart:
	FUNC19(&nmreq);
	FUNC19(&nmrep);

	// PUTFH, REMOVE, GETATTR
	numops = 3;
	FUNC13(error, &nmreq, 17 * NFSX_UNSIGNED + namelen);
	FUNC10(error, &nmreq, "remove", nmp->nm_minor_vers, numops);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_PUTFH);
	FUNC11(error, &nmreq, nfsvers, dnp->n_fhp, dnp->n_fhsize);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_REMOVE);
	FUNC12(error, &nmreq, name, namelen, nmp);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_GETATTR);
	FUNC9(error, &nmreq, nfs_getattr_bitmap, nmp, dnp);
	FUNC14(error, &nmreq);
	FUNC7(error, (numops == 0), EPROTO);
	FUNC22(error);

	error = FUNC6(dnp, NULL, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, 0, &nmrep, &xid, &status);

	if ((lockerror = FUNC4(dnp)))
		error = lockerror;
	FUNC21(error, &nmrep);
	FUNC17(error, &nmrep, numops);
	FUNC20(error, &nmrep, NFS_OP_PUTFH);
	FUNC20(error, &nmrep, NFS_OP_REMOVE);
	remove_error = error;
	FUNC15(error, &nmrep, dnp);
	FUNC20(error, &nmrep, NFS_OP_GETATTR);
	FUNC18(error, &nmrep, dnp, nfsvers, &xid);
	if (error && !lockerror)
		FUNC0(dnp);
nfsmout:
	FUNC16(&nmreq);
	FUNC16(&nmrep);

	if (!lockerror) {
		dnp->n_flag |= NMODIFIED;
		FUNC5(dnp);
	}
	if (error == NFSERR_GRACE) {
		FUNC23(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
		goto restart;
	}

	return (remove_error);
}