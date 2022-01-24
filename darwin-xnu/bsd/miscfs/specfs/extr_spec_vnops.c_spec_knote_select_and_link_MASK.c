#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  TYPE_3__* uthread_t ;
typedef  scalar_t__ uint64_t ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
struct selinfo {int dummy; } ;
struct knote {int /*<<< orphan*/  kn_hook_data; int /*<<< orphan*/  kn_hookid; TYPE_2__* kn_fp; } ;
struct TYPE_9__ {struct waitq_set kq_wqs; } ;
struct TYPE_8__ {struct waitq_set* uu_wqset; } ;
struct TYPE_7__ {TYPE_1__* f_fglob; } ;
struct TYPE_6__ {scalar_t__ fg_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (struct knote*) ; 
 int /*<<< orphan*/  FUNC4 (struct knote*) ; 
 int /*<<< orphan*/  FUNC5 (struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq**,scalar_t__*,int) ; 
 struct selinfo* FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct waitq_set*) ; 

__attribute__((used)) static int
FUNC15(struct knote *kn)
{
	uthread_t uth;
	vfs_context_t ctx;
	vnode_t vp;
	struct waitq_set *old_wqs;
	uint64_t rsvd, rsvd_arg;
	uint64_t *rlptr = NULL;
	struct selinfo *si = NULL;
	int selres = 0;

	uth = FUNC2(FUNC1());

	ctx = FUNC8();
	vp = (vnode_t)kn->kn_fp->f_fglob->fg_data;

	int error = FUNC9(vp, kn->kn_hookid);
	if (error != 0) {
		FUNC5(kn, ENOENT);
		return 0;
	}

	/*
	 * This function may be called many times to link or re-link the
	 * underlying vnode to the kqueue.  If we've already linked the two,
	 * we will have a valid kn_hook_data which ties us to the underlying
	 * device's waitq via a the waitq's prepost table object. However,
	 * devices can abort any select action by calling selthreadclear().
	 * This is OK because the table object will be invalidated by the
	 * driver (through a call to selthreadclear), so any attempt to access
	 * the associated waitq will fail because the table object is invalid.
	 *
	 * Even if we've already registered, we need to pass a pointer
	 * to a reserved link structure. Otherwise, selrecord() will
	 * infer that we're in the second pass of select() and won't
	 * actually do anything!
	 */
	rsvd = rsvd_arg = FUNC13(NULL);
	rlptr = (void *)&rsvd_arg;

	/*
	 * Trick selrecord() into hooking kqueue's wait queue set into the device's
	 * selinfo wait queue.
	 */
	old_wqs = uth->uu_wqset;
	uth->uu_wqset = &(FUNC3(kn)->kq_wqs);

	/*
	 * Be sure that the waitq set is linked
	 * before calling select to avoid possible
	 * allocation under spinlocks.
	 */
	FUNC14(uth->uu_wqset);

	/*
	 * Now these are the laws of VNOP_SELECT, as old and as true as the sky,
	 * And the device that shall keep it may prosper, but the device that shall
	 * break it must receive ENODEV:
	 *
	 * 1. Take a lock to protect against other selects on the same vnode.
	 * 2. Return 1 if data is ready to be read.
	 * 3. Return 0 and call `selrecord` on a handy `selinfo` structure if there
	 *    is no data.
	 * 4. Call `selwakeup` when the vnode has an active `selrecord` and data
	 *    can be read or written (depending on the seltype).
	 * 5. If there's a `selrecord` and no corresponding `selwakeup`, but the
	 *    vnode is going away, call `selthreadclear`.
	 */
	selres = FUNC0(vp, FUNC4(kn), 0, rlptr, ctx);
	uth->uu_wqset = old_wqs;

	/*
	 * Make sure to cleanup the reserved link - this guards against
	 * drivers that may not actually call selrecord().
	 */
	FUNC12(rsvd);
	if (rsvd != rsvd_arg) {
		/* The driver / handler called selrecord() */
		struct waitq *wq;
		FUNC6(&wq, rlptr, sizeof(void *));

		/*
		 * The waitq is part of the selinfo structure managed by the
		 * driver. For certain drivers, we want to hook the knote into
		 * the selinfo structure's si_note field so selwakeup can call
		 * KNOTE.
		 */
		si = FUNC7(wq);

		/*
		 * The waitq_get_prepost_id() function will (potentially)
		 * allocate a prepost table object for the waitq and return
		 * the table object's ID to us.  It will also set the
		 * waitq_prepost_id field within the waitq structure.
		 *
		 * We can just overwrite kn_hook_data because it's simply a
		 * table ID used to grab a reference when needed.
		 *
		 * We have a reference on the vnode, so we know that the
		 * device won't go away while we get this ID.
		 */
		kn->kn_hook_data = FUNC11(wq);
	} else if (selres == 0) {
		/*
		 * The device indicated that there's no data to read, but didn't call
		 * `selrecord`.  Nothing will be notified of changes to this vnode, so
		 * return an error back to user space, to make it clear that the knote
		 * is not attached.
		 */
		FUNC5(kn, ENODEV);
	}

	FUNC10(vp);

	return selres;
}