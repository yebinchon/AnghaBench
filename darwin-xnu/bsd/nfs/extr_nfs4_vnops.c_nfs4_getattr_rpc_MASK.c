#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct nfsreq_secinfo_args {int dummy; } ;
struct TYPE_9__ {int nfsa_flags; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; TYPE_1__ nm_fsattr; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int /*<<< orphan*/ * nva_acl; int /*<<< orphan*/ * nva_bitmap; } ;
typedef  TYPE_3__* nfsnode_t ;
typedef  scalar_t__ mount_t ;
struct TYPE_10__ {int nva_flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  n_parent; TYPE_2__ n_vattr; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_3__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_ATTR_BITMAP_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_FATTR_ACL ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int NFS_FSFLAG_ACL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int NGA_ACL ; 
 int NGA_MONITOR ; 
 int NGA_SOFT ; 
 int R_RECOVER ; 
 int R_SOFT ; 
 struct nfsmount* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfs_vattr*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nfsm_chain*,int /*<<< orphan*/ *,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC9 (struct nfsmount*) ; 
 int FUNC10 (TYPE_3__*,scalar_t__,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ *,struct nfsmount*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC18 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

int
FUNC26(
	nfsnode_t np,
	mount_t mp,
	u_char *fhp,
	size_t fhsize,
	int flags,
	vfs_context_t ctx,
	struct nfs_vattr *nvap,
	u_int64_t *xidp)
{
	struct nfsmount *nmp = mp ? FUNC5(mp) : FUNC1(np);
	int error = 0, status, nfsvers, numops, rpcflags = 0, acls;
	uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
	struct nfsm_chain nmreq, nmrep;
	struct nfsreq_secinfo_args si;

	if (FUNC9(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	acls = (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_ACL);

	if (np && (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)) {
		FUNC7(FUNC6(np->n_parent), NULL, 0, nvap, NULL);
		return (0);
	}

	if (flags & NGA_MONITOR) /* vnode monitor requests should be soft */
		rpcflags = R_RECOVER;

	if (flags & NGA_SOFT) /* Return ETIMEDOUT if server not responding */
		rpcflags |= R_SOFT;

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC20(&nmreq);
	FUNC20(&nmrep);

	// PUTFH, GETATTR
	numops = 2;
	FUNC16(error, &nmreq, 15 * NFSX_UNSIGNED);
	FUNC14(error, &nmreq, "getattr", nmp->nm_minor_vers, numops);
	numops--;
	FUNC12(error, &nmreq, NFS_OP_PUTFH);
	FUNC15(error, &nmreq, nfsvers, fhp, fhsize);
	numops--;
	FUNC12(error, &nmreq, NFS_OP_GETATTR);
	FUNC4(nfs_getattr_bitmap, bitmap);
	if ((flags & NGA_ACL) && acls)
		FUNC3(bitmap, NFS_FATTR_ACL);
	FUNC13(error, &nmreq, bitmap, nmp, np);
	FUNC17(error, &nmreq);
	FUNC11(error, (numops == 0), EPROTO);
	FUNC23(error);
	error = FUNC10(np, mp, &nmreq, NFSPROC4_COMPOUND, 
			FUNC24(ctx), FUNC25(ctx),
			NULL, rpcflags, &nmrep, xidp, &status);

	FUNC22(error, &nmrep);
	FUNC19(error, &nmrep, numops);
	FUNC21(error, &nmrep, NFS_OP_PUTFH);
	FUNC21(error, &nmrep, NFS_OP_GETATTR);
	FUNC23(error);
	error = FUNC8(&nmrep, NULL, nvap, NULL, NULL, NULL);
	FUNC23(error);
	if ((flags & NGA_ACL) && acls && !FUNC2(nvap->nva_bitmap, NFS_FATTR_ACL)) {
		/* we asked for the ACL but didn't get one... assume there isn't one */
		FUNC3(nvap->nva_bitmap, NFS_FATTR_ACL);
		nvap->nva_acl = NULL;
	}
nfsmout:
	FUNC18(&nmreq);
	FUNC18(&nmrep);
	return (error);
}