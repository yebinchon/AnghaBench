#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_fsattr {int nfsa_flags; int /*<<< orphan*/  nfsa_bitmap; scalar_t__ nfsa_maxname; scalar_t__ nfsa_maxlink; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_8__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NFSPROC_PATHCONF ; 
 struct nfsmount* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_FATTR_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  NFS_FATTR_CASE_PRESERVING ; 
 int /*<<< orphan*/  NFS_FATTR_CHOWN_RESTRICTED ; 
 int /*<<< orphan*/  NFS_FATTR_MAXLINK ; 
 int /*<<< orphan*/  NFS_FATTR_MAXNAME ; 
 int /*<<< orphan*/  NFS_FATTR_NO_TRUNC ; 
 int NFS_FSFLAG_CASE_INSENSITIVE ; 
 int NFS_FSFLAG_CASE_PRESERVING ; 
 int NFS_FSFLAG_CHOWN_RESTRICTED ; 
 int NFS_FSFLAG_NO_TRUNC ; 
 int /*<<< orphan*/  NFS_VER3 ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int
FUNC15(
	nfsnode_t np,
	struct nfs_fsattr *nfsap,
	vfs_context_t ctx)
{
	u_int64_t xid;
	int error = 0, lockerror, status, nfsvers;
	struct nfsm_chain nmreq, nmrep;
	struct nfsmount *nmp = FUNC0(np);
	uint32_t val = 0;

	if (FUNC3(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	FUNC12(&nmreq);
	FUNC12(&nmrep);

	/* fetch pathconf info from server */
	FUNC8(error, &nmreq, FUNC1(NFS_VER3));
	FUNC7(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	FUNC9(error, &nmreq);
	FUNC14(error);
	error = FUNC6(np, NULL, &nmreq, NFSPROC_PATHCONF, ctx, NULL, &nmrep, &xid, &status);
	if ((lockerror = FUNC4(np)))
		error = lockerror;
	FUNC13(error, &nmrep, np, &xid);
	if (!lockerror)
		FUNC5(np);
	if (!error)
		error = status;
	FUNC11(error, &nmrep, nfsap->nfsa_maxlink);
	FUNC11(error, &nmrep, nfsap->nfsa_maxname);
	nfsap->nfsa_flags &= ~(NFS_FSFLAG_NO_TRUNC|NFS_FSFLAG_CHOWN_RESTRICTED|NFS_FSFLAG_CASE_INSENSITIVE|NFS_FSFLAG_CASE_PRESERVING);
	FUNC11(error, &nmrep, val);
	if (val)
		nfsap->nfsa_flags |= NFS_FSFLAG_NO_TRUNC;
	FUNC11(error, &nmrep, val);
	if (val)
		nfsap->nfsa_flags |= NFS_FSFLAG_CHOWN_RESTRICTED;
	FUNC11(error, &nmrep, val);
	if (val)
		nfsap->nfsa_flags |= NFS_FSFLAG_CASE_INSENSITIVE;
	FUNC11(error, &nmrep, val);
	if (val)
		nfsap->nfsa_flags |= NFS_FSFLAG_CASE_PRESERVING;
	FUNC2(nfsap->nfsa_bitmap, NFS_FATTR_MAXLINK);
	FUNC2(nfsap->nfsa_bitmap, NFS_FATTR_MAXNAME);
	FUNC2(nfsap->nfsa_bitmap, NFS_FATTR_NO_TRUNC);
	FUNC2(nfsap->nfsa_bitmap, NFS_FATTR_CHOWN_RESTRICTED);
	FUNC2(nfsap->nfsa_bitmap, NFS_FATTR_CASE_INSENSITIVE);
	FUNC2(nfsap->nfsa_bitmap, NFS_FATTR_CASE_PRESERVING);
nfsmout:
	FUNC10(&nmreq);
	FUNC10(&nmrep);
	return (error);
}