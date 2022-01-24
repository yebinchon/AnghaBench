#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int /*<<< orphan*/  nm_mountp; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_fs_locations {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_4__ {int n_fhsize; int /*<<< orphan*/ * n_fhp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ) ; 
 int NFSX_UNSIGNED ; 
 int NFS_ATTR_BITMAP_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_FATTR_FS_LOCATIONS ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_LOOKUP ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_VER4 ; 
 int FUNC3 (struct nfsm_chain*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nfs_fs_locations*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsreq**) ; 
 int FUNC5 (struct nfsreq*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,char const*,int /*<<< orphan*/ ,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

int
FUNC23(
	struct nfsmount *nmp,
	nfsnode_t dnp,
	u_char *fhp,
	int fhsize,
	const char *name,
	vfs_context_t ctx,
	struct nfs_fs_locations *nfslsp)
{
	int error = 0, numops, status;
	uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
	struct nfsreq rq, *req = &rq;
	struct nfsreq_secinfo_args si;
	struct nfsm_chain nmreq, nmrep;
	uint64_t xid;

	if (!fhp && dnp) {
		fhp = dnp->n_fhp;
		fhsize = dnp->n_fhsize;
	}
	if (!fhp)
		return (EINVAL);

	FUNC16(&nmreq);
	FUNC16(&nmrep);

	FUNC0(&si, NULL, fhp, fhsize, name, 0);
	numops = 3;
	FUNC12(error, &nmreq, 18 * NFSX_UNSIGNED);
	FUNC9(error, &nmreq, "fs_locations", nmp->nm_minor_vers, numops);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_PUTFH);
	FUNC10(error, &nmreq, NFS_VER4, fhp, fhsize);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_LOOKUP);
	FUNC11(error, &nmreq, name, FUNC20(name), nmp);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_GETATTR);
	FUNC2(bitmap);
	FUNC1(bitmap, NFS_FATTR_FS_LOCATIONS);
	FUNC8(error, &nmreq, bitmap, NFS_ATTR_BITMAP_LEN);
	FUNC13(error, &nmreq);
	FUNC6(error, (numops == 0), EPROTO);
	FUNC19(error);
	error = FUNC4(dnp, nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND,
			FUNC21(ctx), FUNC22(ctx), &si, 0, NULL, &req);
	if (!error)
		error = FUNC5(req, &nmrep, &xid, &status);
	FUNC18(error, &nmrep);
	FUNC15(error, &nmrep, numops);
	FUNC17(error, &nmrep, NFS_OP_PUTFH);
	FUNC17(error, &nmrep, NFS_OP_LOOKUP);
	FUNC17(error, &nmrep, NFS_OP_GETATTR);
	FUNC19(error);
	error = FUNC3(&nmrep, NULL, NULL, NULL, NULL, nfslsp);
nfsmout:
	FUNC14(&nmrep);
	FUNC14(&nmreq);
	return (error);
}