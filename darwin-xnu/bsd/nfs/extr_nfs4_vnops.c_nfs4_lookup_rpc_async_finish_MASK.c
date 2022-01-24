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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsreq {int /*<<< orphan*/  r_secinfo; } ;
struct nfsmount {int nm_vers; int nm_state; int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_auth; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_sec {int /*<<< orphan*/ * flavors; scalar_t__ count; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;
struct TYPE_4__ {int fh_len; int /*<<< orphan*/  fh_data; } ;
typedef  TYPE_1__ fhandle_t ;

/* Variables and functions */
 int EBADRPC ; 
 int ENOENT ; 
 int ENXIO ; 
 int NFSERR_INVAL ; 
 int NFSERR_MOVED ; 
 int NFSERR_OP_ILLEGAL ; 
 int NFSSTA_NEEDSECINFO ; 
 struct nfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFS_OP_GETATTR ; 
 scalar_t__ NFS_OP_GETFH ; 
 scalar_t__ NFS_OP_LOOKUP ; 
 scalar_t__ NFS_OP_LOOKUPP ; 
 scalar_t__ NFS_OP_PUTFH ; 
 scalar_t__ NX_MAX_SEC_FLAVORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,struct nfs_vattr*,TYPE_1__*) ; 
 int FUNC4 (struct nfsm_chain*,int /*<<< orphan*/ *,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nfsreq*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(
	nfsnode_t dnp,
	char *name,
	int namelen,
	vfs_context_t ctx,
	struct nfsreq *req,
	u_int64_t *xidp,
	fhandle_t *fhp,
	struct nfs_vattr *nvap)
{
	int error = 0, lockerror = ENOENT, status, nfsvers, numops, isdotdot = 0;
	uint32_t op = NFS_OP_LOOKUP;
	u_int64_t xid;
	struct nfsmount *nmp;
	struct nfsm_chain nmrep;

	nmp = FUNC0(dnp);
	if (nmp == NULL)
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if ((name[0] == '.') && (name[1] == '.') && (namelen == 2))
		isdotdot = 1;

	FUNC13(&nmrep);

	error = FUNC8(req, &nmrep, &xid, &status);

	if ((lockerror = FUNC6(dnp)))
		error = lockerror;
	FUNC15(error, &nmrep);
	FUNC10(error, &nmrep, numops);
	FUNC14(error, &nmrep, NFS_OP_PUTFH);
	FUNC14(error, &nmrep, NFS_OP_GETATTR);
	if (xidp)
		*xidp = xid;
	FUNC12(error, &nmrep, dnp, nfsvers, &xid);

	FUNC14(error, &nmrep, (isdotdot ? NFS_OP_LOOKUPP : NFS_OP_LOOKUP));
	FUNC16(error || !fhp || !nvap);
	FUNC14(error, &nmrep, NFS_OP_GETFH);
	FUNC10(error, &nmrep, fhp->fh_len);
	if (error == 0 && fhp->fh_len > sizeof(fhp->fh_data))
		error = EBADRPC;
	FUNC16(error);
	FUNC11(error, &nmrep, fhp->fh_len, fhp->fh_data);
	FUNC14(error, &nmrep, NFS_OP_GETATTR);
	if ((error == NFSERR_MOVED) || (error == NFSERR_INVAL)) {
		/* set this up to look like a referral trigger */
		FUNC3(dnp, name, namelen, nvap, fhp);
		error = 0;
	} else {
		FUNC16(error);
		error = FUNC4(&nmrep, NULL, nvap, NULL, NULL, NULL);
	}
nfsmout:
	if (!lockerror)
		FUNC7(dnp);
	FUNC9(&nmrep);
	if (!error && (op == NFS_OP_LOOKUP) && (nmp->nm_state & NFSSTA_NEEDSECINFO)) {
		/* We still need to get SECINFO to set default for mount. */
		/* Do so for the first LOOKUP that returns successfully. */
		struct nfs_sec sec;

		sec.count = NX_MAX_SEC_FLAVORS;
		error = FUNC5(nmp, &req->r_secinfo, FUNC17(ctx), sec.flavors, &sec.count);
		/* [sigh] some implementations return "illegal" error for unsupported ops */
		if (error == NFSERR_OP_ILLEGAL)
			error = 0;
		if (!error) {
			/* set our default security flavor to the first in the list */
			FUNC1(&nmp->nm_lock);
			if (sec.count)
				nmp->nm_auth = sec.flavors[0];
			nmp->nm_state &= ~NFSSTA_NEEDSECINFO;
			FUNC2(&nmp->nm_lock);
		}
	}
	return (error);
}