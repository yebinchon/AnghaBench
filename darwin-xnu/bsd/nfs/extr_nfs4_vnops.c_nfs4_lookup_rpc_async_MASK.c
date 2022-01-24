#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_8__ {int nva_flags; } ;
struct TYPE_9__ {int n_flag; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/ * n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_ATTR_BITMAP_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_FATTR_NAMED_ATTR ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_GETFH ; 
 int /*<<< orphan*/  NFS_OP_LOOKUP ; 
 int /*<<< orphan*/  NFS_OP_LOOKUPP ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int NISDOTZFS ; 
 int NISDOTZFSCHILD ; 
 int /*<<< orphan*/ * nfs_getattr_bitmap ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsreq**) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ *,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,char*,int,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(
	nfsnode_t dnp,
	char *name,
	int namelen,
	vfs_context_t ctx,
	struct nfsreq **reqp)
{
	int error = 0, isdotdot = 0, nfsvers, numops;
	struct nfsm_chain nmreq;
	uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
	struct nfsmount *nmp;
	struct nfsreq_secinfo_args si;

	nmp = FUNC1(dnp);
	if (FUNC4(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	if ((name[0] == '.') && (name[1] == '.') && (namelen == 2)) {
		isdotdot = 1;
		FUNC0(&si, dnp, NULL, 0, NULL, 0);
	} else {
		FUNC0(&si, dnp, dnp->n_fhp, dnp->n_fhsize, name, namelen);
	}

	FUNC15(&nmreq);

	// PUTFH, GETATTR, LOOKUP(P), GETFH, GETATTR (FH)
	numops = 5;
	FUNC12(error, &nmreq, 20 * NFSX_UNSIGNED + namelen);
	FUNC9(error, &nmreq, "lookup", nmp->nm_minor_vers, numops);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_PUTFH);
	FUNC10(error, &nmreq, nfsvers, dnp->n_fhp, dnp->n_fhsize);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_GETATTR);
	FUNC8(error, &nmreq, nfs_getattr_bitmap, nmp, dnp);
	numops--;
	if (isdotdot) {
		FUNC7(error, &nmreq, NFS_OP_LOOKUPP);
	} else {
		FUNC7(error, &nmreq, NFS_OP_LOOKUP);
		FUNC11(error, &nmreq, name, namelen, nmp);
	}
	numops--;
	FUNC7(error, &nmreq, NFS_OP_GETFH);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_GETATTR);
	FUNC3(nfs_getattr_bitmap, bitmap);
	/* some ".zfs" directories can't handle being asked for some attributes */
	if ((dnp->n_flag & NISDOTZFS) && !isdotdot)
		FUNC2(bitmap, NFS_FATTR_NAMED_ATTR);
	if ((dnp->n_flag & NISDOTZFSCHILD) && isdotdot)
		FUNC2(bitmap, NFS_FATTR_NAMED_ATTR);
	if (((namelen == 4) && (name[0] == '.') && (name[1] == 'z') && (name[2] == 'f') && (name[3] == 's')))
		FUNC2(bitmap, NFS_FATTR_NAMED_ATTR);
	FUNC8(error, &nmreq, bitmap, nmp, NULL);
	FUNC13(error, &nmreq);
	FUNC6(error, (numops == 0), EPROTO);
	FUNC16(error);
	error = FUNC5(dnp, NULL, &nmreq, NFSPROC4_COMPOUND,
			FUNC17(ctx), FUNC18(ctx), &si, 0, NULL, reqp);
nfsmout:
	FUNC14(&nmreq);
	return (error);
}