#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
struct uthread {int uu_flag; } ;
struct TYPE_11__ {int p_lflag; } ;
struct TYPE_10__ {scalar_t__ v_iocount; int v_usecount; int v_lflag; scalar_t__ v_owner; scalar_t__ v_writecount; scalar_t__ v_kusecount; int v_flag; scalar_t__ v_type; TYPE_1__* v_ubcinfo; scalar_t__ v_references; } ;
struct TYPE_9__ {int /*<<< orphan*/  ui_control; } ;

/* Variables and functions */
 int ENOENT ; 
 int FWRITE ; 
 int O_EVTONLY ; 
 int P_LRAGE_VNODES ; 
 int UT_RAGE_VNODES ; 
 int VL_DEAD ; 
 int VL_DRAIN ; 
 int VL_TERMINATE ; 
 int VNODE_REF_FORCE ; 
 int VRAGE ; 
 scalar_t__ VREG ; 
 int VSYSTEM ; 
 TYPE_8__* FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 struct uthread* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int
FUNC9(vnode_t vp, int fmode, int flags)
{
	int	error = 0;

	FUNC7(vp);

	/*
	 * once all the current call sites have been fixed to insure they have
	 * taken an iocount, we can toughen this assert up and insist that the
	 * iocount is non-zero... a non-zero usecount doesn't insure correctness
	 */
	if (vp->v_iocount <= 0 && vp->v_usecount <= 0) 
		FUNC4("vnode_ref_ext: vp %p has no valid reference %d, %d", vp, vp->v_iocount, vp->v_usecount);

	/*
	 * if you are the owner of drain/termination, can acquire usecount
	 */
	if ((flags & VNODE_REF_FORCE) == 0) {
		if ((vp->v_lflag & (VL_DRAIN | VL_TERMINATE | VL_DEAD))) {
			if (vp->v_owner != FUNC1()) {
				error = ENOENT;
				goto out;
			}
		}
	}
	vp->v_usecount++;

	if (fmode & FWRITE) {
	        if (++vp->v_writecount <= 0)
		        FUNC4("vnode_ref_ext: v_writecount");
	}
	if (fmode & O_EVTONLY) {
	        if (++vp->v_kusecount <= 0)
		        FUNC4("vnode_ref_ext: v_kusecount");
	}
	if (vp->v_flag & VRAGE) {
	        struct  uthread *ut;

	        ut = FUNC2(FUNC1());
		
	        if ( !(FUNC0()->p_lflag & P_LRAGE_VNODES) &&
		     !(ut->uu_flag & UT_RAGE_VNODES)) {
		        /*
			 * a 'normal' process accessed this vnode
			 * so make sure its no longer marked
			 * for rapid aging...  also, make sure
			 * it gets removed from the rage list...
			 * when v_usecount drops back to 0, it
			 * will be put back on the real free list
			 */
			vp->v_flag &= ~VRAGE;
			vp->v_references = 0;
			FUNC5(vp);
		}
	}
	if (vp->v_usecount == 1 && vp->v_type == VREG && !(vp->v_flag & VSYSTEM)) {

		if (vp->v_ubcinfo) {
			FUNC6(vp);
			FUNC3(vp->v_ubcinfo->ui_control);
		}
	}
out:
	FUNC8(vp);

	return (error);
}