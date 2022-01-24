#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  size_t vm_offset_t ;
typedef  scalar_t__ upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct vnop_pagein_args {scalar_t__ a_pl; size_t a_size; size_t a_f_offset; size_t a_pl_offset; int a_flags; int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_vp; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {size_t nm_rsize; scalar_t__ nm_vers; scalar_t__ nm_stategenid; int /*<<< orphan*/  nm_state; int /*<<< orphan*/  nm_lock; TYPE_1__* nm_funcs; } ;
typedef  int /*<<< orphan*/  req ;
typedef  size_t off_t ;
typedef  TYPE_2__* nfsnode_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_13__ {int /*<<< orphan*/  pageins; } ;
struct TYPE_12__ {int n_flag; scalar_t__ n_size; } ;
struct TYPE_11__ {int (* nf_read_rpc_async ) (TYPE_2__*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsreq**) ;int (* nf_read_rpc_async_finish ) (TYPE_2__*,struct nfsreq*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*,size_t,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int MAXPAGINGREQS ; 
 size_t FUNC3 (size_t,size_t) ; 
 int NFSERR_GRACE ; 
 scalar_t__ NFS_VER4 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int NREVOKE ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 size_t PAGE_MASK_64 ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int UPL_ABORT_ERROR ; 
 int UPL_ABORT_FREE_ON_EMPTY ; 
 int UPL_COMMIT_CLEAR_DIRTY ; 
 int UPL_COMMIT_FREE_ON_EMPTY ; 
 int UPL_NOCOMMIT ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct nfsmount*) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (struct nfsmount*) ; 
 int FUNC16 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC17 (struct nfsmount*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct nfsreq*) ; 
 TYPE_7__ nfsstats ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,size_t) ; 
 int FUNC21 (TYPE_2__*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsreq**) ; 
 int FUNC22 (TYPE_2__*,struct nfsreq*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,size_t,size_t,int) ; 
 scalar_t__ FUNC27 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/ * FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC31 (int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int) ; 
 TYPE_2__* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 

int
FUNC39(
	struct vnop_pagein_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		upl_t a_pl;
		vm_offset_t a_pl_offset;
		off_t a_f_offset;
		size_t a_size;
		int a_flags;
		vfs_context_t a_context;
	} */ *ap)
{
	vnode_t vp = ap->a_vp;
	upl_t pl = ap->a_pl;
	size_t size = ap->a_size;
	off_t f_offset = ap->a_f_offset;
	vm_offset_t pl_offset = ap->a_pl_offset;
	int flags = ap->a_flags;
	thread_t thd;
	kauth_cred_t cred;
	nfsnode_t np = FUNC7(vp);
	size_t nmrsize, iosize, txsize, rxsize, retsize;
	off_t txoffset;
	struct nfsmount *nmp;
	int error = 0;
	vm_offset_t ioaddr, rxaddr;
	uio_t uio;
	char uio_buf [ FUNC6(1) ];
	int nofreeupl = flags & UPL_NOCOMMIT;
	upl_page_info_t *plinfo;
#define MAXPAGINGREQS	16	/* max outstanding RPCs for pagein/pageout */
	struct nfsreq *req[MAXPAGINGREQS];
	int nextsend, nextwait;
	uint32_t stategenid = 0, restart = 0;
	kern_return_t kret;

	FUNC1(322, np, f_offset, size, flags);
	if (pl == (upl_t)NULL)
		FUNC19("nfs_pagein: no upl");

	if (size <= 0) {
		FUNC20("nfs_pagein: invalid size %ld", size);
		if (!nofreeupl)
			(void) FUNC25(pl, pl_offset, size, 0);
		return (EINVAL);
	}
	if (f_offset < 0 || f_offset >= (off_t)np->n_size || (f_offset & PAGE_MASK_64)) {
		if (!nofreeupl)
			FUNC25(pl, pl_offset, size,
				UPL_ABORT_ERROR | UPL_ABORT_FREE_ON_EMPTY);
		return (EINVAL);
	}

	thd = FUNC37(ap->a_context);
	cred = FUNC24(vp);
	if (!FUNC2(cred))
		cred = FUNC38(ap->a_context);

	uio = FUNC31(1, f_offset, UIO_SYSSPACE, UIO_READ,
		&uio_buf, sizeof(uio_buf));

	nmp = FUNC8(vp);
	if (FUNC13(nmp)) {
		if (!nofreeupl)
			FUNC25(pl, pl_offset, size,
				UPL_ABORT_ERROR | UPL_ABORT_FREE_ON_EMPTY);
		return (ENXIO);
	}
	nmrsize = nmp->nm_rsize;

	plinfo = FUNC28(pl);
	kret = FUNC27(pl, &ioaddr);
	if (kret != KERN_SUCCESS)
		FUNC19("nfs_vnop_pagein: ubc_upl_map() failed with (%d)", kret);
	ioaddr += pl_offset;

tryagain:
	if (nmp->nm_vers >= NFS_VER4)
		stategenid = nmp->nm_stategenid;
	txsize = rxsize = size;
	txoffset = f_offset;
	rxaddr = ioaddr;

	FUNC9(req, sizeof(req));
	nextsend = nextwait = 0;
	do {
		if (np->n_flag & NREVOKE) {
			error = EIO;
			break;
		}
		/* send requests while we need to and have available slots */
		while ((txsize > 0) && (req[nextsend] == NULL)) {
			iosize = FUNC3(nmrsize, txsize);
			if ((error = nmp->nm_funcs->nf_read_rpc_async(np, txoffset, iosize, thd, cred, NULL, &req[nextsend]))) {
				req[nextsend] = NULL;
				break;
			}
			txoffset += iosize;
			txsize -= iosize;
			nextsend = (nextsend + 1) % MAXPAGINGREQS;
		}
		/* wait while we need to and break out if more requests to send */
		while ((rxsize > 0) && req[nextwait]) {
			iosize = retsize = FUNC3(nmrsize, rxsize);
			FUNC33(uio, FUNC32(uio), UIO_SYSSPACE, UIO_READ);
			FUNC30(uio, FUNC0(rxaddr), iosize);
			FUNC1(322, FUNC32(uio), FUNC34(uio), rxaddr, rxsize);
#if UPL_DEBUG
			upl_ubc_alias_set(pl, (uintptr_t) current_thread(), (uintptr_t) 2);
#endif /* UPL_DEBUG */
			FUNC5(1, &nfsstats.pageins);
			error = nmp->nm_funcs->nf_read_rpc_async_finish(np, req[nextwait], uio, &retsize, NULL);
			req[nextwait] = NULL;
			nextwait = (nextwait + 1) % MAXPAGINGREQS;
			if ((nmp->nm_vers >= NFS_VER4) && FUNC14(error)) {
				FUNC11(&nmp->nm_lock);
				if ((error != NFSERR_GRACE) && (stategenid == nmp->nm_stategenid)) {
					FUNC4(np, "nfs_vnop_pagein: error %d, initiating recovery", error);
					FUNC17(nmp, error);
				}
				FUNC12(&nmp->nm_lock);
				restart++;
				goto cancel;
			}
			if (error) {
				FUNC1(322, FUNC32(uio), FUNC34(uio), error, -1);
				break;
			}
			if (retsize < iosize) {
				/* Just zero fill the rest of the valid area. */
				int zcnt = iosize - retsize;
				FUNC9((char *)rxaddr + retsize, zcnt);
				FUNC1(324, FUNC32(uio), retsize, zcnt, rxaddr);
				FUNC35(uio, zcnt);
			}
			rxaddr += iosize;	
			rxsize -= iosize;
			if (txsize)
				break;
		}
	} while (!error && (txsize || rxsize));

	restart = 0;

	if (error) {
cancel:
		/* cancel any outstanding requests */
		while (req[nextwait]) {
			FUNC18(req[nextwait]);
			req[nextwait] = NULL;
			nextwait = (nextwait + 1) % MAXPAGINGREQS;
		}
		if (np->n_flag & NREVOKE) {
			error = EIO;
		} else if (restart) {
			if (restart <= FUNC15(nmp)) { /* guard against no progress */
				if (error == NFSERR_GRACE)
					FUNC23(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
				if (!(error = FUNC16(nmp)))
					goto tryagain;
			} else {
				FUNC4(np, "nfs_pagein: too many restarts, aborting");
			}
		}
	}

	FUNC29(pl);

	if (!nofreeupl) {
		if (error)
			FUNC25(pl, pl_offset, size,
					    UPL_ABORT_ERROR |
					    UPL_ABORT_FREE_ON_EMPTY);
		else
			FUNC26(pl, pl_offset, size,
					     UPL_COMMIT_CLEAR_DIRTY |
					     UPL_COMMIT_FREE_ON_EMPTY);
	}
	return (error);
}