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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct TYPE_8__ {int nfsa_maxread; int nfsa_maxwrite; int /*<<< orphan*/  nfsa_bitmap; int /*<<< orphan*/  nfsa_flags; int /*<<< orphan*/  nfsa_maxfilesize; } ;
struct nfsmount {int nm_rsize; int nm_wsize; int nm_readdirsize; int /*<<< orphan*/  nm_lock; TYPE_1__ nm_fsattr; int /*<<< orphan*/  nm_state; int /*<<< orphan*/  nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_9__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSPROC_FSINFO ; 
 int /*<<< orphan*/  NFSSTA_GOTFSINFO ; 
 int NFSV3FSINFO_CANSETTIME ; 
 int NFSV3FSINFO_HOMOGENEOUS ; 
 int NFSV3FSINFO_LINK ; 
 int NFSV3FSINFO_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NFSX_UNSIGNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NFS_FABLKSIZE ; 
 int /*<<< orphan*/  NFS_FATTR_CANSETTIME ; 
 int /*<<< orphan*/  NFS_FATTR_HOMOGENEOUS ; 
 int /*<<< orphan*/  NFS_FATTR_LINK_SUPPORT ; 
 int /*<<< orphan*/  NFS_FATTR_MAXFILESIZE ; 
 int /*<<< orphan*/  NFS_FATTR_MAXREAD ; 
 int /*<<< orphan*/  NFS_FATTR_MAXWRITE ; 
 int /*<<< orphan*/  NFS_FATTR_SYMLINK_SUPPORT ; 
 int /*<<< orphan*/  NFS_FSFLAG_HOMOGENEOUS ; 
 int /*<<< orphan*/  NFS_FSFLAG_LINK ; 
 int /*<<< orphan*/  NFS_FSFLAG_SET_TIME ; 
 int /*<<< orphan*/  NFS_FSFLAG_SYMLINK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

int
FUNC17(struct nfsmount *nmp, nfsnode_t np, vfs_context_t ctx)
{
	int error = 0, lockerror, status, nmlocked = 0;
	u_int64_t xid;
	uint32_t val, prefsize, maxsize;
	struct nfsm_chain nmreq, nmrep;

	FUNC14(&nmreq);
	FUNC14(&nmrep);

	FUNC9(error, &nmreq, FUNC0(nmp->nm_vers));
	FUNC7(error, &nmreq, nmp->nm_vers, np->n_fhp, np->n_fhsize);
	FUNC10(error, &nmreq);
	FUNC16(error);
	error = FUNC6(np, NULL, &nmreq, NFSPROC_FSINFO, ctx, NULL, &nmrep, &xid, &status);
	if ((lockerror = FUNC4(np)))
		error = lockerror;
	FUNC15(error, &nmrep, np, &xid);
	if (!lockerror)
		FUNC5(np);
	if (!error)
		error = status;
	FUNC16(error);

	FUNC2(&nmp->nm_lock);
	nmlocked = 1;

	FUNC12(error, &nmrep, maxsize);
	FUNC12(error, &nmrep, prefsize);
	FUNC16(error);
	nmp->nm_fsattr.nfsa_maxread = maxsize;
	if (prefsize < nmp->nm_rsize)
		nmp->nm_rsize = (prefsize + NFS_FABLKSIZE - 1) &
			~(NFS_FABLKSIZE - 1);
	if ((maxsize > 0) && (maxsize < nmp->nm_rsize)) {
		nmp->nm_rsize = maxsize & ~(NFS_FABLKSIZE - 1);
		if (nmp->nm_rsize == 0)
			nmp->nm_rsize = maxsize;
	}
	FUNC8(error, &nmrep, NFSX_UNSIGNED); // skip rtmult

	FUNC12(error, &nmrep, maxsize);
	FUNC12(error, &nmrep, prefsize);
	FUNC16(error);
	nmp->nm_fsattr.nfsa_maxwrite = maxsize;
	if (prefsize < nmp->nm_wsize)
		nmp->nm_wsize = (prefsize + NFS_FABLKSIZE - 1) &
			~(NFS_FABLKSIZE - 1);
	if ((maxsize > 0) && (maxsize < nmp->nm_wsize)) {
		nmp->nm_wsize = maxsize & ~(NFS_FABLKSIZE - 1);
		if (nmp->nm_wsize == 0)
			nmp->nm_wsize = maxsize;
	}
	FUNC8(error, &nmrep, NFSX_UNSIGNED); // skip wtmult

	FUNC12(error, &nmrep, prefsize);
	FUNC16(error);
	if ((prefsize > 0) && (prefsize < nmp->nm_readdirsize))
		nmp->nm_readdirsize = prefsize;
	if ((nmp->nm_fsattr.nfsa_maxread > 0) &&
	    (nmp->nm_fsattr.nfsa_maxread < nmp->nm_readdirsize))
		nmp->nm_readdirsize = nmp->nm_fsattr.nfsa_maxread;

	FUNC13(error, &nmrep, nmp->nm_fsattr.nfsa_maxfilesize);

	FUNC8(error, &nmrep, 2 * NFSX_UNSIGNED); // skip time_delta

	/* convert FS properties to our own flags */
	FUNC12(error, &nmrep, val);
	FUNC16(error);
	if (val & NFSV3FSINFO_LINK)
		nmp->nm_fsattr.nfsa_flags |= NFS_FSFLAG_LINK;
	if (val & NFSV3FSINFO_SYMLINK)
		nmp->nm_fsattr.nfsa_flags |= NFS_FSFLAG_SYMLINK;
	if (val & NFSV3FSINFO_HOMOGENEOUS)
		nmp->nm_fsattr.nfsa_flags |= NFS_FSFLAG_HOMOGENEOUS;
	if (val & NFSV3FSINFO_CANSETTIME)
		nmp->nm_fsattr.nfsa_flags |= NFS_FSFLAG_SET_TIME;
	nmp->nm_state |= NFSSTA_GOTFSINFO;
	FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXREAD);
	FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXWRITE);
	FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXFILESIZE);
	FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_LINK_SUPPORT);
	FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_SYMLINK_SUPPORT);
	FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_HOMOGENEOUS);
	FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_CANSETTIME);
nfsmout:
	if (nmlocked)
		FUNC3(&nmp->nm_lock);
	FUNC11(&nmreq);
	FUNC11(&nmrep);
	return (error);
}