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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int /*<<< orphan*/  nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_open_owner {int /*<<< orphan*/  noo_seqid; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;
typedef  int /*<<< orphan*/  nfs_stateid ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NFSX_UNSIGNED ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_OPEN_CONFIRM ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  R_NOINTR ; 
 int FUNC1 (struct nfsm_chain*,int /*<<< orphan*/ *,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_open_owner*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

int
FUNC19(
	struct nfsmount *nmp,
	nfsnode_t dnp,
	u_char *fhp,
	int fhlen,
	struct nfs_open_owner *noop,
	nfs_stateid *sid,
	thread_t thd,
	kauth_cred_t cred,
	struct nfs_vattr *nvap,
	uint64_t *xidp)
{
	struct nfsm_chain nmreq, nmrep;
	int error = 0, status, numops;
	struct nfsreq_secinfo_args si;

	FUNC0(&si, dnp, NULL, 0, NULL, 0);
	FUNC15(&nmreq);
	FUNC15(&nmrep);

	// PUTFH, OPEN_CONFIRM, GETATTR
	numops = 3;
	FUNC10(error, &nmreq, 23 * NFSX_UNSIGNED);
	FUNC7(error, &nmreq, "open_confirm", nmp->nm_minor_vers, numops);
	numops--;
	FUNC5(error, &nmreq, NFS_OP_PUTFH);
	FUNC8(error, &nmreq, nmp->nm_vers, fhp, fhlen);
	numops--;
	FUNC5(error, &nmreq, NFS_OP_OPEN_CONFIRM);
	FUNC9(error, &nmreq, sid);
	FUNC5(error, &nmreq, noop->noo_seqid);
	numops--;
	FUNC5(error, &nmreq, NFS_OP_GETATTR);
	FUNC6(error, &nmreq, nfs_getattr_bitmap, nmp, dnp);
	FUNC11(error, &nmreq);
	FUNC4(error, (numops == 0), EPROTO);
	FUNC18(error);
	error = FUNC3(dnp, NULL, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, R_NOINTR, &nmrep, xidp, &status);

	FUNC17(error, &nmrep);
	FUNC13(error, &nmrep, numops);
	FUNC16(error, &nmrep, NFS_OP_PUTFH);
	FUNC18(error);
	FUNC16(error, &nmrep, NFS_OP_OPEN_CONFIRM);
	FUNC2(noop, NULL, error);
	FUNC14(error, &nmrep, sid);
	FUNC16(error, &nmrep, NFS_OP_GETATTR);
	FUNC18(error);
	error = FUNC1(&nmrep, NULL, nvap, NULL, NULL, NULL);
nfsmout:
	FUNC12(&nmreq);
	FUNC12(&nmrep);
	return (error);
}