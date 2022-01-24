#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_fsattr {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_11__ {int nva_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_ATTR_BITMAP_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_FATTR_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  NFS_FATTR_CASE_PRESERVING ; 
 int /*<<< orphan*/  NFS_FATTR_CHOWN_RESTRICTED ; 
 int /*<<< orphan*/  NFS_FATTR_MAXLINK ; 
 int /*<<< orphan*/  NFS_FATTR_MAXNAME ; 
 int /*<<< orphan*/  NFS_FATTR_NO_TRUNC ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_vattr*) ; 
 int FUNC6 (struct nfsm_chain*,struct nfs_fsattr*,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct nfsmount*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int /*<<< orphan*/ *,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC19 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

int
FUNC25(
	nfsnode_t np,
	struct nfs_fsattr *nfsap,
	vfs_context_t ctx)
{
	u_int64_t xid;
	int error = 0, lockerror, status, nfsvers, numops;
	struct nfsm_chain nmreq, nmrep;
	struct nfsmount *nmp = FUNC1(np);
	uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
	struct nfs_vattr nvattr;
	struct nfsreq_secinfo_args si;

	if (FUNC8(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC5(&nvattr);
	FUNC21(&nmreq);
	FUNC21(&nmrep);

	/* NFSv4: fetch "pathconf" info for this node */
	// PUTFH, GETATTR
	numops = 2;
	FUNC17(error, &nmreq, 16 * NFSX_UNSIGNED);
	FUNC15(error, &nmreq, "pathconf", nmp->nm_minor_vers, numops);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_PUTFH);
	FUNC16(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_GETATTR);
	FUNC3(nfs_getattr_bitmap, bitmap);
	FUNC2(bitmap, NFS_FATTR_MAXLINK);
	FUNC2(bitmap, NFS_FATTR_MAXNAME);
	FUNC2(bitmap, NFS_FATTR_NO_TRUNC);
	FUNC2(bitmap, NFS_FATTR_CHOWN_RESTRICTED);
	FUNC2(bitmap, NFS_FATTR_CASE_INSENSITIVE);
	FUNC2(bitmap, NFS_FATTR_CASE_PRESERVING);
	FUNC14(error, &nmreq, bitmap, nmp, np);
	FUNC18(error, &nmreq);
	FUNC12(error, (numops == 0), EPROTO);
	FUNC24(error);
	error = FUNC11(np, NULL, &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

	FUNC23(error, &nmrep);
	FUNC20(error, &nmrep, numops);
	FUNC22(error, &nmrep, NFS_OP_PUTFH);
	FUNC22(error, &nmrep, NFS_OP_GETATTR);
	FUNC24(error);
	error = FUNC6(&nmrep, nfsap, &nvattr, NULL, NULL, NULL);
	FUNC24(error);
	if ((lockerror = FUNC9(np)))
		error = lockerror;
	if (!error)
		FUNC7(np, &nvattr, &xid, 0);
	if (!lockerror)
		FUNC10(np);
nfsmout:
	FUNC4(&nvattr);
	FUNC19(&nmreq);
	FUNC19(&nmrep);
	return (error);
}