#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct TYPE_4__ {int nfsa_flags; int /*<<< orphan*/  nfsa_bitmap; int /*<<< orphan*/  nfsa_maxname; } ;
struct nfsmount {scalar_t__ nm_vers; int /*<<< orphan*/  nm_lock; TYPE_2__ nm_fsattr; TYPE_1__* nm_fh; int /*<<< orphan*/  nm_mountp; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_fsattr {int dummy; } ;
typedef  int /*<<< orphan*/ * nfsnode_t ;
struct TYPE_3__ {int /*<<< orphan*/  fh_len; int /*<<< orphan*/  fh_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_FATTR_HOMOGENEOUS ; 
 int /*<<< orphan*/  NFS_FATTR_MAXNAME ; 
 int NFS_FSFLAG_HOMOGENEOUS ; 
 int /*<<< orphan*/  NFS_MAXNAMLEN ; 
 scalar_t__ NFS_VER2 ; 
 scalar_t__ NFS_VER3 ; 
 int /*<<< orphan*/  NG_MARKROOT ; 
 int /*<<< orphan*/  RPCAUTH_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs_vattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsmount*,struct nfs_fsattr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct nfs_fsattr*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(
	struct nfsmount *nmp,
	vfs_context_t ctx,
	nfsnode_t *npp)
{
	int error = 0;
	struct nfs_vattr nvattr;
	u_int64_t xid;

	*npp = NULL;

	if (!nmp->nm_fh)
		return (EINVAL);

	/*
	 * Get file attributes for the mountpoint.  These are needed
	 * in order to properly create the root vnode.
	 */
	error = FUNC6(NULL, nmp->nm_mountp, nmp->nm_fh->fh_data, nmp->nm_fh->fh_len, 0,
			ctx, &nvattr, &xid);
	if (error)
		goto out;

	error = FUNC9(nmp->nm_mountp, NULL, NULL, nmp->nm_fh->fh_data, nmp->nm_fh->fh_len,
			&nvattr, &xid, RPCAUTH_UNKNOWN, NG_MARKROOT, npp);
	if (*npp)
		FUNC10(*npp);
	if (error)
		goto out;

	/*
	 * Try to make sure we have all the general info from the server.
	 */
	if (nmp->nm_vers == NFS_VER2) {
		FUNC2(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXNAME);
		nmp->nm_fsattr.nfsa_maxname = NFS_MAXNAMLEN;
	} else if (nmp->nm_vers == NFS_VER3) {
		/* get the NFSv3 FSINFO */
		error = FUNC5(nmp, *npp, ctx);
		if (error)
			goto out;
		/* If the server indicates all pathconf info is */
		/* the same, grab a copy of that info now */
		if (FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_HOMOGENEOUS) &&
		    (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS)) {
			struct nfs_fsattr nfsa;
			if (!FUNC8(*npp, &nfsa, ctx)) {
				/* cache a copy of the results */
				FUNC3(&nmp->nm_lock);
				FUNC7(nmp, &nfsa);
				FUNC4(&nmp->nm_lock);
			}
		}
	}
out:
	if (*npp && error) {
		FUNC11(FUNC0(*npp));
		FUNC12(FUNC0(*npp));
		*npp = NULL;
	}
	return (error);
}