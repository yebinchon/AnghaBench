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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_5__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NFSPROC_LOOKUP ; 
 struct nfsmount* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ NFSX_UNSIGNED ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsreq**) ; 
 int /*<<< orphan*/  FUNC4 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct nfsm_chain*,char*,int,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsm_chain*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int
FUNC14(
	nfsnode_t dnp,
	char *name,
	int namelen,
	vfs_context_t ctx,
	struct nfsreq **reqp)
{
	struct nfsmount *nmp;
	struct nfsm_chain nmreq;
	int error = 0, nfsvers;

	nmp = FUNC0(dnp);
	if (FUNC2(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	FUNC9(&nmreq);

	FUNC6(error, &nmreq,
		FUNC1(nfsvers) + NFSX_UNSIGNED + FUNC10(namelen));
	FUNC4(error, &nmreq, nfsvers, dnp->n_fhp, dnp->n_fhsize);
	FUNC5(error, &nmreq, name, namelen, nmp);
	FUNC7(error, &nmreq);
	FUNC11(error);
	error = FUNC3(dnp, NULL, &nmreq, NFSPROC_LOOKUP,
			FUNC12(ctx), FUNC13(ctx), NULL, 0, NULL, reqp);
nfsmout:
	FUNC8(&nmreq);
	return (error);
}