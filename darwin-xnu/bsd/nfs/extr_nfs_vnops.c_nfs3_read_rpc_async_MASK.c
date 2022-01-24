#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_cbinfo {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  size_t off_t ;
typedef  TYPE_1__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_5__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NFSPROC_READ ; 
 struct nfsmount* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int NFSX_UNSIGNED ; 
 int NFS_VER3 ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsreq_cbinfo*,struct nfsreq**) ; 
 int /*<<< orphan*/  FUNC4 (int,struct nfsm_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,struct nfsm_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int
FUNC12(
	nfsnode_t np,
	off_t offset,
	size_t len,
	thread_t thd,
	kauth_cred_t cred,
	struct nfsreq_cbinfo *cb,
	struct nfsreq **reqp)
{
	struct nfsmount *nmp;
	int error = 0, nfsvers;
	struct nfsm_chain nmreq;

	nmp = FUNC0(np);
	if (FUNC2(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	FUNC10(&nmreq);
	FUNC7(error, &nmreq, FUNC1(nfsvers) + 3 * NFSX_UNSIGNED);
	FUNC6(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	if (nfsvers == NFS_VER3) {
		FUNC5(error, &nmreq, offset);
		FUNC4(error, &nmreq, len);
	} else {
		FUNC4(error, &nmreq, offset);
		FUNC4(error, &nmreq, len);
		FUNC4(error, &nmreq, 0);
	}
	FUNC8(error, &nmreq);
	FUNC11(error);
	error = FUNC3(np, NULL, &nmreq, NFSPROC_READ, thd, cred, NULL, 0, cb, reqp);
nfsmout:
	FUNC9(&nmreq);
	return (error);
}