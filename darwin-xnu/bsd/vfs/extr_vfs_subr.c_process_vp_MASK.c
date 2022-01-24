#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
struct TYPE_17__ {scalar_t__ tqe_prev; scalar_t__ tqe_next; } ;
struct TYPE_18__ {unsigned int v_id; scalar_t__ v_usecount; scalar_t__ v_iocount; int v_lflag; scalar_t__ v_type; int v_flag; int /*<<< orphan*/  v_ncchildren; int /*<<< orphan*/  v_nclinks; TYPE_1__ v_mntvnodes; scalar_t__ v_kusecount; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VBAD ; 
 int VISDIRTY ; 
 int VL_DEAD ; 
 int VL_MARKTERM ; 
 int VL_NEEDINACTIVE ; 
 int VL_TERMINATE ; 
 int VNAMED_FSHASH ; 
 int VNAMED_MOUNT ; 
 int VNAMED_UBC ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static vnode_t
FUNC14(vnode_t vp, int want_vp, int *deferred)
{
	unsigned int  vpid;

	*deferred = 0;

	vpid = vp->v_id;

	FUNC6(vp);

	FUNC7();

	FUNC9(vp);

	/* 
	 * We could wait for the vnode_lock after removing the vp from the freelist
	 * and the vid is bumped only at the very end of reclaim. So it is  possible
	 * that we are looking at a vnode that is being terminated. If so skip it.
	 */ 
	if ((vpid != vp->v_id) || (vp->v_usecount != 0) || (vp->v_iocount != 0) || 
	    FUNC2(vp) || (vp->v_lflag & VL_TERMINATE)) {
		/*
		 * we lost the race between dropping the list lock
		 * and picking up the vnode_lock... someone else
		 * used this vnode and it is now in a new state
		 */
		FUNC13(vp);
		
		return (NULLVP);
	}
	if ( (vp->v_lflag & (VL_NEEDINACTIVE | VL_MARKTERM)) == VL_NEEDINACTIVE ) {
	        /*
		 * we did a vnode_rele_ext that asked for
		 * us not to reenter the filesystem during
		 * the release even though VL_NEEDINACTIVE was
		 * set... we'll do it here by doing a
		 * vnode_get/vnode_put
		 *
		 * pick up an iocount so that we can call
		 * vnode_put and drive the VNOP_INACTIVE...
		 * vnode_put will either leave us off 
		 * the freelist if a new ref comes in,
		 * or put us back on the end of the freelist
		 * or recycle us if we were marked for termination...
		 * so we'll just go grab a new candidate
		 */
	        vp->v_iocount++;
#ifdef JOE_DEBUG
		record_vp(vp, 1);
#endif
		FUNC11(vp);
		FUNC13(vp);

		return (NULLVP);
	}
	/*
	 * Checks for anyone racing us for recycle
	 */ 
	if (vp->v_type != VBAD) {
		if (want_vp && (FUNC10(vp) == FALSE || (vp->v_flag & VISDIRTY))) {
			FUNC5(vp);
			FUNC13(vp);
			
			*deferred = 1;

			return (NULLVP);
		}
		if (vp->v_lflag & VL_DEAD)
			FUNC3("new_vnode(%p): the vnode is VL_DEAD but not VBAD", vp);

		FUNC8(vp);
		(void)FUNC12(vp, 1, want_vp, 0);

		if (want_vp) {
			if ((FUNC2(vp)))
				FUNC3("new_vnode(%p): vp on list", vp);
			if (vp->v_usecount || vp->v_iocount || vp->v_kusecount ||
			    (vp->v_lflag & (VNAMED_UBC | VNAMED_MOUNT | VNAMED_FSHASH)))
				FUNC3("new_vnode(%p): free vnode still referenced", vp);
			if ((vp->v_mntvnodes.tqe_prev != 0) && (vp->v_mntvnodes.tqe_next != 0))
				FUNC3("new_vnode(%p): vnode seems to be on mount list", vp);
			if ( !FUNC0(&vp->v_nclinks) || !FUNC1(&vp->v_ncchildren))
				FUNC3("new_vnode(%p): vnode still hooked into the name cache", vp);
		} else {
			FUNC13(vp);
			vp = NULLVP;
		}
	}
	return (vp);
}