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
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsmount {int /*<<< orphan*/  nm_mountp; int /*<<< orphan*/  nm_clientid; int /*<<< orphan*/  nm_minor_vers; int /*<<< orphan*/  nm_mcred; } ;
struct nfsm_chain {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPROTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int NFSX_UNSIGNED ; 
 int /*<<< orphan*/  NFS_OP_RENEW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(struct nfsmount *nmp, int rpcflag)
{
	int error = 0, status, numops;
	u_int64_t xid;
	struct nfsm_chain nmreq, nmrep;
	kauth_cred_t cred;

	cred = FUNC0(nmp->nm_mcred) ? nmp->nm_mcred : FUNC18(FUNC17());
	FUNC2(cred);

	FUNC13(&nmreq);
	FUNC13(&nmrep);

	// RENEW
	numops = 1;
	FUNC9(error, &nmreq, 8 * NFSX_UNSIGNED);
	FUNC8(error, &nmreq, "renew", nmp->nm_minor_vers, numops);
	numops--;
	FUNC6(error, &nmreq, NFS_OP_RENEW);
	FUNC7(error, &nmreq, nmp->nm_clientid);
	FUNC10(error, &nmreq);
	FUNC5(error, (numops == 0), EPROTO);
	FUNC16(error);
	error = FUNC4(NULL, nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND,
			FUNC1(), cred, NULL, rpcflag, &nmrep, &xid, &status);
	FUNC15(error, &nmrep);
	FUNC12(error, &nmrep, numops);
	FUNC14(error, &nmrep, NFS_OP_RENEW);
nfsmout:
	FUNC11(&nmreq);
	FUNC11(&nmrep);
	FUNC3(&cred);
	return (error);
}