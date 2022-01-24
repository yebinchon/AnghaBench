#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  nfsa_bsize; } ;
struct nfsmount {int nm_vers; TYPE_7__ nm_fsattr; int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_minor_vers; TYPE_1__* nm_dnp; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_11__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENXIO ; 
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC1 (struct nfsreq_secinfo_args*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_ATTR_BITMAP_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_FABLKSIZE ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_vattr*) ; 
 int /*<<< orphan*/  R_SOFT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct nfsm_chain*,TYPE_7__*,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int /*<<< orphan*/ *,struct nfsmount*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC21 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC24 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 

int
FUNC31(struct nfsmount *nmp, vfs_context_t ctx)
{
	nfsnode_t np;
	int error = 0, lockerror, status, nfsvers, numops;
	u_int64_t xid;
	struct nfsm_chain nmreq, nmrep;
	uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
	struct nfs_vattr nvattr;
	struct nfsreq_secinfo_args si;

	nfsvers = nmp->nm_vers;
	np = nmp->nm_dnp;
	if (!np)
		return (ENXIO);
	if ((error = FUNC29(FUNC3(np))))
		return (error);

	FUNC1(&si, np, NULL, 0, NULL, 0);
	FUNC6(&nvattr);
	FUNC23(&nmreq);
	FUNC23(&nmrep);

	// PUTFH + GETATTR
	numops = 2;
	FUNC19(error, &nmreq, 15 * NFSX_UNSIGNED);
	FUNC17(error, &nmreq, "statfs", nmp->nm_minor_vers, numops);
	numops--;
	FUNC15(error, &nmreq, NFS_OP_PUTFH);
	FUNC18(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC15(error, &nmreq, NFS_OP_GETATTR);
	FUNC4(nfs_getattr_bitmap, bitmap);
	FUNC0(bitmap);
	FUNC16(error, &nmreq, bitmap, nmp, np);
	FUNC20(error, &nmreq);
	FUNC14(error, (numops == 0), EPROTO);
	FUNC26(error);
	error = FUNC13(np, NULL, &nmreq, NFSPROC4_COMPOUND,
		FUNC27(ctx), FUNC28(ctx),
		NULL, R_SOFT, &nmrep, &xid, &status);
	FUNC25(error, &nmrep);
	FUNC22(error, &nmrep, numops);
	FUNC24(error, &nmrep, NFS_OP_PUTFH);
	FUNC24(error, &nmrep, NFS_OP_GETATTR);
	FUNC14(error, FUNC2(np), ENXIO);
	FUNC26(error);
	FUNC7(&nmp->nm_lock);
	error = FUNC9(&nmrep, &nmp->nm_fsattr, &nvattr, NULL, NULL, NULL);
	FUNC8(&nmp->nm_lock);
	FUNC26(error);
	if ((lockerror = FUNC11(np)))
		error = lockerror;
	if (!error)
		FUNC10(np, &nvattr, &xid, 0);
	if (!lockerror)
		FUNC12(np);
	FUNC14(error, FUNC2(np), ENXIO);
	FUNC26(error);
	nmp->nm_fsattr.nfsa_bsize = NFS_FABLKSIZE;
nfsmout:
	FUNC5(&nvattr);
	FUNC21(&nmreq);
	FUNC21(&nmrep);
	FUNC30(FUNC3(np));
	return (error);
}