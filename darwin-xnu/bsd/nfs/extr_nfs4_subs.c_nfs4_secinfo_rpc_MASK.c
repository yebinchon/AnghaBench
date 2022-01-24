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
typedef  int /*<<< orphan*/ * vnode_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct nfsreq_secinfo_args {int rsia_fhsize; char* rsia_name; int rsia_namelen; int /*<<< orphan*/ * rsia_fh; TYPE_2__* rsia_np; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_mountp; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_sillyrename {char* nsr_name; int nsr_namlen; TYPE_2__* nsr_dnp; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_8__ {int nva_flags; } ;
struct TYPE_9__ {int n_fhsize; int /*<<< orphan*/ * n_fhp; int /*<<< orphan*/ * n_parent; TYPE_1__ n_vattr; struct nfs_sillyrename* n_sillyrename; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_IS_ATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_PUTROOTFH ; 
 int /*<<< orphan*/  NFS_OP_SECINFO ; 
 int /*<<< orphan*/ * NULLVP ; 
 scalar_t__ VDIR ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,char const*,int,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int) ; 
 int FUNC17 (struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (char const*) ; 
 int FUNC24 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 char* FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char const*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *) ; 

int
FUNC31(struct nfsmount *nmp, struct nfsreq_secinfo_args *siap, kauth_cred_t cred, uint32_t *sec, int *seccountp)
{
	int error = 0, status, nfsvers, numops, namelen, fhsize;
	vnode_t dvp = NULLVP;
	nfsnode_t np, dnp;
	u_char *fhp;
	const char *vname = NULL, *name;
	uint64_t xid;
	struct nfsm_chain nmreq, nmrep;

	*seccountp = 0;
	if (FUNC4(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	np = siap->rsia_np;

	FUNC18(&nmreq);
	FUNC18(&nmrep);

	fhp = siap->rsia_fh;
	fhsize = fhp ? siap->rsia_fhsize : 0;
	name = siap->rsia_name;
	namelen = name ? siap->rsia_namelen : 0;
	if (name && !namelen)
		namelen = FUNC23(name);
	if (!fhp && name) {
		if (!np)  /* use PUTROOTFH */
			goto gotargs;
		fhp = np->n_fhp;
		fhsize = np->n_fhsize;
	}
	if (fhp && name)
		goto gotargs;

	if (!np)
		return (EIO);
	FUNC5(np);
	if ((FUNC30(FUNC0(np)) != VDIR) && np->n_sillyrename) {
		/*
		 * The node's been sillyrenamed, so we need to use
		 * the sillyrename directory/name to do the open.
		 */
		struct nfs_sillyrename *nsp = np->n_sillyrename;
		dnp = nsp->nsr_dnp;
		dvp = FUNC0(dnp);
		if ((error = FUNC25(dvp))) {
			FUNC6(np);
			goto nfsmout;
		}
		fhp = dnp->n_fhp;
		fhsize = dnp->n_fhsize;
		name = nsp->nsr_name;
		namelen = nsp->nsr_namlen;
	} else {
		/*
		 * [sigh] We can't trust VFS to get the parent right for named
		 * attribute nodes.  (It likes to reparent the nodes after we've
		 * created them.)  Luckily we can probably get the right parent
		 * from the n_parent we have stashed away.
		 */
		if ((np->n_vattr.nva_flags & NFS_FFLAG_IS_ATTR) &&
		    (((dvp = np->n_parent)) && (error = FUNC25(dvp))))
			dvp = NULL;
		if (!dvp)
			dvp = FUNC27(FUNC0(np));
		vname = FUNC26(FUNC0(np));
		if (!dvp || !vname) {
			if (!error)
				error = EIO;
			FUNC6(np);
			goto nfsmout;
		}
		dnp = FUNC2(dvp);
		fhp = dnp->n_fhp;
		fhsize = dnp->n_fhsize;
		name = vname;
		namelen = FUNC24(vname, MAXPATHLEN);
	}
	FUNC6(np);

gotargs:
	// PUT(ROOT)FH + SECINFO
	numops = 2;
	FUNC13(error, &nmreq,
		4 * NFSX_UNSIGNED + FUNC1(nfsvers) + FUNC21(namelen));
	FUNC10(error, &nmreq, "secinfo", nmp->nm_minor_vers, numops);
	numops--;
	if (fhp) {
		FUNC9(error, &nmreq, NFS_OP_PUTFH);
		FUNC11(error, &nmreq, nfsvers, fhp, fhsize);
	} else {
		FUNC9(error, &nmreq, NFS_OP_PUTROOTFH);
	}
	numops--;
	FUNC9(error, &nmreq, NFS_OP_SECINFO);
	FUNC12(error, &nmreq, name, namelen, nmp);
	FUNC14(error, &nmreq);
	FUNC8(error, (numops == 0), EPROTO);
	FUNC22(error);
	error = FUNC7(np, nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND,
			FUNC3(), cred, NULL, 0, &nmrep, &xid, &status);
	FUNC20(error, &nmrep);
	FUNC16(error, &nmrep, numops);
	FUNC19(error, &nmrep, fhp ? NFS_OP_PUTFH : NFS_OP_PUTROOTFH);
	FUNC19(error, &nmrep, NFS_OP_SECINFO);
	FUNC22(error);
	error = FUNC17(&nmrep, sec, seccountp);
nfsmout:
	FUNC15(&nmreq);
	FUNC15(&nmrep);
	if (vname)
		FUNC29(vname);
	if (dvp != NULLVP)
		FUNC28(dvp);
	return (error);
}