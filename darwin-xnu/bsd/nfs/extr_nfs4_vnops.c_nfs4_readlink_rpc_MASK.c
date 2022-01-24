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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_11__ {int nva_flags; } ;
struct TYPE_12__ {int n_size; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_READLINK ; 
 int /*<<< orphan*/  NFS_VER4 ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

int
FUNC21(nfsnode_t np, char *buf, uint32_t *buflenp, vfs_context_t ctx)
{
	struct nfsmount *nmp;
	int error = 0, lockerror = ENOENT, status, numops;
	uint32_t len = 0;
	u_int64_t xid;
	struct nfsm_chain nmreq, nmrep;
	struct nfsreq_secinfo_args si;

	nmp = FUNC1(np);
	if (FUNC2(nmp))
		return (ENXIO);
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);
	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC17(&nmreq);
	FUNC17(&nmrep);

	// PUTFH, GETATTR, READLINK
	numops = 3;
	FUNC11(error, &nmreq, 16 * NFSX_UNSIGNED);
	FUNC9(error, &nmreq, "readlink", nmp->nm_minor_vers, numops);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_PUTFH);
	FUNC10(error, &nmreq, NFS_VER4, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_GETATTR);
	FUNC8(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	numops--;
	FUNC7(error, &nmreq, NFS_OP_READLINK);
	FUNC12(error, &nmreq);
	FUNC6(error, (numops == 0), EPROTO);
	FUNC20(error);
	error = FUNC5(np, NULL, &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

	if ((lockerror = FUNC3(np)))
		error = lockerror;
	FUNC19(error, &nmrep);
	FUNC14(error, &nmrep, numops);
	FUNC18(error, &nmrep, NFS_OP_PUTFH);
	FUNC18(error, &nmrep, NFS_OP_GETATTR);
	FUNC16(error, &nmrep, np, NFS_VER4, &xid);
	FUNC18(error, &nmrep, NFS_OP_READLINK);
	FUNC14(error, &nmrep, len);
	FUNC20(error);
	if (len >= *buflenp) {
		if (np->n_size && (np->n_size < *buflenp))
			len = np->n_size;
		else
			len = *buflenp - 1;
	}
	FUNC15(error, &nmrep, len, buf);
	if (!error)
		*buflenp = len;
nfsmout:
	if (!lockerror)
		FUNC4(np);
	FUNC13(&nmreq);
	FUNC13(&nmrep);
	return (error);
}