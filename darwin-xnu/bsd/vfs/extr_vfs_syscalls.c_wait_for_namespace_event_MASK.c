#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ uio_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  task_t ;
struct vnode_attr {int /*<<< orphan*/  va_linkid; } ;
struct proc {int dummy; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef  size_t nspace_type_t ;
struct TYPE_17__ {scalar_t__ objid; scalar_t__ infoptr; scalar_t__ fdptr; scalar_t__ flags; scalar_t__ token; } ;
typedef  TYPE_2__ namespace_handler_data ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_18__ {int v_flag; } ;
struct TYPE_16__ {scalar_t__ fg_data; int /*<<< orphan*/ * fg_ops; scalar_t__ fg_flag; } ;
struct TYPE_15__ {int handler_busy; int /*<<< orphan*/ * handler_proc; int /*<<< orphan*/  handler_tid; } ;
struct TYPE_14__ {int flags; TYPE_4__* vp; scalar_t__ token; scalar_t__ vid; int /*<<< orphan*/  arg; scalar_t__ op; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int MAX_NSPACE_ITEMS ; 
 size_t NSPACE_HANDLER_SNAPSHOT ; 
 void* NSPACE_ITEM_DONE ; 
 int NSPACE_ITEM_NEW ; 
 int NSPACE_ITEM_PROCESSING ; 
 int PCATCH ; 
 int PVFS ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 scalar_t__ FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int VNEEDSSNAPSHOT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__*,scalar_t__,int) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct proc*,struct fileproc**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*,scalar_t__,struct fileproc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,scalar_t__,struct fileproc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,size_t) ; 
 int /*<<< orphan*/  nspace_handler_exclusion_lock ; 
 int /*<<< orphan*/  nspace_handler_lock ; 
 TYPE_12__* nspace_handlers ; 
 int /*<<< orphan*/  nspace_item_idx ; 
 TYPE_11__* nspace_items ; 
 scalar_t__ FUNC16 (size_t) ; 
 scalar_t__ nspace_token_id ; 
 int /*<<< orphan*/  FUNC17 (struct proc*) ; 
 int /*<<< orphan*/  FUNC18 (struct proc*) ; 
 int /*<<< orphan*/  FUNC19 (struct proc*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snapshot_timestamp ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  va_linkid ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC25 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC26 (TYPE_4__*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC27 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*) ; 
 int /*<<< orphan*/  vnops ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__) ; 

__attribute__((used)) static int
FUNC32(namespace_handler_data *nhd, nspace_type_t nspace_type)
{
	int i;
	int error = 0;
	int unblock = 0;
	task_t curtask;

	FUNC12(&nspace_handler_exclusion_lock);
	if (nspace_handlers[nspace_type].handler_busy) {
		FUNC13(&nspace_handler_exclusion_lock);
		return EBUSY;
	}

	nspace_handlers[nspace_type].handler_busy = 1;
	FUNC13(&nspace_handler_exclusion_lock);

	/*
	 * Any process that gets here will be one of the namespace handlers.
	 * As such, they should be prevented from acquiring DMG vnodes during vnode reclamation
	 * as we can cause deadlocks to occur, because the namespace handler may prevent
	 * VNOP_INACTIVE from proceeding.  Mark the current task as a P_DEPENDENCY_CAPABLE
	 * process.
	 */
	curtask = FUNC7();
	FUNC4 (curtask);

	FUNC12(&nspace_handler_lock);
	if (nspace_handlers[nspace_type].handler_proc == NULL) {
		nspace_handlers[nspace_type].handler_tid = FUNC20(FUNC8());
		nspace_handlers[nspace_type].handler_proc = FUNC6();
	}

	if (nspace_type == NSPACE_HANDLER_SNAPSHOT &&
			(snapshot_timestamp == 0 || snapshot_timestamp == ~0)) {
		error = EINVAL;
	}

	while (error == 0) {

		/* Try to find matching namespace item */
		for (i = 0; i < MAX_NSPACE_ITEMS; i++) {
			if (nspace_items[i].flags & NSPACE_ITEM_NEW) {
				if (FUNC15(nspace_items[i].flags, nspace_type)) {
					break;
				}
			}
		}

		if (i >= MAX_NSPACE_ITEMS) {
			/* Nothing is there yet. Wait for wake up and retry */
			error = FUNC14((caddr_t)&nspace_item_idx, &nspace_handler_lock, PVFS|PCATCH, "namespace-items", 0);
			if ((nspace_type == NSPACE_HANDLER_SNAPSHOT) && (snapshot_timestamp == 0 || snapshot_timestamp == ~0)) {
				/* Prevent infinite loop if snapshot handler exited */
				error = EINVAL;
				break;
			}
			continue;
		}

		nspace_items[i].flags  &= ~NSPACE_ITEM_NEW;
		nspace_items[i].flags  |= NSPACE_ITEM_PROCESSING;
		nspace_items[i].token  = ++nspace_token_id;

		FUNC3(nspace_items[i].vp);
		struct fileproc *fp;
		int32_t indx;
		int32_t fmode;
		struct proc *p = FUNC6();
		vfs_context_t ctx = FUNC23();
		struct vnode_attr va;
		bool vn_get_succsessful = false;
		bool vn_open_successful = false;
		bool fp_alloc_successful = false;

		/*
		 * Use vnode pointer to acquire a file descriptor for
		 * hand-off to userland
		 */
		fmode = FUNC16(nspace_type);
		error = FUNC27(nspace_items[i].vp, nspace_items[i].vid);
		if (error) goto cleanup;
		vn_get_succsessful = true;

		error = FUNC25(nspace_items[i].vp, fmode, ctx);
		if (error) goto cleanup;
		vn_open_successful = true;

		error = FUNC9(p, &fp, &indx, ctx);
		if (error) goto cleanup;
		fp_alloc_successful = true;

		fp->f_fglob->fg_flag = fmode;
		fp->f_fglob->fg_ops = &vnops;
		fp->f_fglob->fg_data = (caddr_t)nspace_items[i].vp;

		FUNC17(p);
		FUNC19(p, indx, NULL);
		FUNC10(p, indx, fp, 1);
		FUNC18(p);

		/*
		 * All variants of the namespace handler struct support these three fields:
		 * token, flags, and the FD pointer
		 */
		error = FUNC5(&nspace_items[i].token, nhd->token, sizeof(uint32_t));
		if (error) goto cleanup;
		error = FUNC5(&nspace_items[i].op, nhd->flags, sizeof(uint64_t));
		if (error) goto cleanup;
		error = FUNC5(&indx, nhd->fdptr, sizeof(uint32_t));
		if (error) goto cleanup;

		/*
		 * Handle optional fields:
		 * extended version support an info ptr (offset, length), and the
		 *
		 * namedata version supports a unique per-link object ID
		 *
		 */
		if (nhd->infoptr) {
			uio_t uio = (uio_t)nspace_items[i].arg;
			uint64_t u_offset, u_length;

			if (uio) {
				u_offset = FUNC21(uio);
				u_length = FUNC22(uio);
			} else {
				u_offset = 0;
				u_length = 0;
			}
			error = FUNC5(&u_offset, nhd->infoptr, sizeof(uint64_t));
			if (error) goto cleanup;
			error = FUNC5(&u_length, nhd->infoptr + sizeof(uint64_t), sizeof(uint64_t));
			if (error) goto cleanup;
		}

		if (nhd->objid) {
			FUNC0(&va);
			FUNC2(&va, va_linkid);
			error = FUNC26(nspace_items[i].vp, &va, ctx);
			if (error) goto cleanup;

			uint64_t linkid = 0;
			if (FUNC1 (&va, va_linkid)) {
				linkid = (uint64_t)va.va_linkid;
			}
			error = FUNC5(&linkid, nhd->objid, sizeof(uint64_t));
		}
cleanup:
		if (error) {
			if (fp_alloc_successful) FUNC11(p, indx, fp);
			if (vn_open_successful) FUNC24(nspace_items[i].vp, fmode, ctx);
			unblock = 1;
		}

		if (vn_get_succsessful) FUNC29(nspace_items[i].vp);

		break;
	}

	if (unblock) {
		if (nspace_items[i].vp && (nspace_items[i].vp->v_flag & VNEEDSSNAPSHOT)) {
			FUNC28(nspace_items[i].vp);
			nspace_items[i].vp->v_flag &= ~VNEEDSSNAPSHOT;
			FUNC30(nspace_items[i].vp);
		}
		nspace_items[i].vp = NULL;
		nspace_items[i].vid = 0;
		nspace_items[i].flags = NSPACE_ITEM_DONE;
		nspace_items[i].token = 0;

		FUNC31((caddr_t)&(nspace_items[i].vp));
	}

	if (nspace_type == NSPACE_HANDLER_SNAPSHOT) {
		// just go through every snapshot event and unblock it immediately.
		if (error && (snapshot_timestamp == 0 || snapshot_timestamp == ~0)) {
			for(i = 0; i < MAX_NSPACE_ITEMS; i++) {
				if (nspace_items[i].flags & NSPACE_ITEM_NEW) {
					if (FUNC15(nspace_items[i].flags, nspace_type)) {
						nspace_items[i].vp = NULL;
						nspace_items[i].vid = 0;
						nspace_items[i].flags = NSPACE_ITEM_DONE;
						nspace_items[i].token = 0;

						FUNC31((caddr_t)&(nspace_items[i].vp));
					}
				}
			}
		}
	}

	FUNC13(&nspace_handler_lock);

	FUNC12(&nspace_handler_exclusion_lock);
	nspace_handlers[nspace_type].handler_busy = 0;
	FUNC13(&nspace_handler_exclusion_lock);

	return error;
}