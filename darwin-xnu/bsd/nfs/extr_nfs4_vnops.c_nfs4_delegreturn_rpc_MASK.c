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
struct nfsmount {int /*<<< orphan*/  nm_mountp; int /*<<< orphan*/  nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_stateid {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NFSX_UNSIGNED ; 
 int /*<<< orphan*/  NFS_OP_DELEGRETURN ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,struct nfs_stateid*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int
FUNC15(struct nfsmount *nmp, u_char *fhp, int fhlen, struct nfs_stateid *sid, int flags, thread_t thd, kauth_cred_t cred)
{
	int error = 0, status, numops;
	uint64_t xid;
	struct nfsm_chain nmreq, nmrep;
	struct nfsreq_secinfo_args si;

	FUNC0(&si, NULL, fhp, fhlen, NULL, 0);
	FUNC11(&nmreq);
	FUNC11(&nmrep);

	// PUTFH, DELEGRETURN
	numops = 2;
	FUNC7(error, &nmreq, 16 * NFSX_UNSIGNED);
	FUNC4(error, &nmreq, "delegreturn", nmp->nm_minor_vers, numops);
	numops--;
	FUNC3(error, &nmreq, NFS_OP_PUTFH);
	FUNC5(error, &nmreq, nmp->nm_vers, fhp, fhlen);
	numops--;
	FUNC3(error, &nmreq, NFS_OP_DELEGRETURN);
	FUNC6(error, &nmreq, sid);
	FUNC8(error, &nmreq);
	FUNC2(error, (numops == 0), EPROTO);
	FUNC14(error);
	error = FUNC1(NULL, nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, flags, &nmrep, &xid, &status);
	FUNC13(error, &nmrep);
	FUNC10(error, &nmrep, numops);
	FUNC12(error, &nmrep, NFS_OP_PUTFH);
	FUNC12(error, &nmrep, NFS_OP_DELEGRETURN);
nfsmout:
	FUNC9(&nmreq);
	FUNC9(&nmrep);
	return (error);
}