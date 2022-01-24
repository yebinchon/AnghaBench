#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsreq_cbinfo {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  nfs_stateid ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_9__ {int nva_flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 size_t NFS_OP_GETATTR ; 
 size_t NFS_OP_PUTFH ; 
 size_t NFS_OP_READ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,struct nfsreq_cbinfo*,struct nfsreq**) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct nfsm_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

int
FUNC17(
	nfsnode_t np,
	off_t offset,
	size_t len,
	thread_t thd,
	kauth_cred_t cred,
	struct nfsreq_cbinfo *cb,
	struct nfsreq **reqp)
{
	struct nfsmount *nmp;
	int error = 0, nfsvers, numops;
	nfs_stateid stateid;
	struct nfsm_chain nmreq;
	struct nfsreq_secinfo_args si;

	nmp = FUNC1(np);
	if (FUNC3(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC15(&nmreq);

	// PUTFH, READ, GETATTR
	numops = 3;
	FUNC12(error, &nmreq, 22 * NFSX_UNSIGNED);
	FUNC9(error, &nmreq, "read", nmp->nm_minor_vers, numops);
	numops--;
	FUNC6(error, &nmreq, NFS_OP_PUTFH);
	FUNC10(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC6(error, &nmreq, NFS_OP_READ);
	FUNC2(np, thd, cred, &stateid);
	FUNC11(error, &nmreq, &stateid);
	FUNC7(error, &nmreq, offset);
	FUNC6(error, &nmreq, len);
	numops--;
	FUNC6(error, &nmreq, NFS_OP_GETATTR);
	FUNC8(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	FUNC13(error, &nmreq);
	FUNC5(error, (numops == 0), EPROTO);
	FUNC16(error);
	error = FUNC4(np, NULL, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, 0, cb, reqp);
nfsmout:
	FUNC14(&nmreq);
	return (error);
}