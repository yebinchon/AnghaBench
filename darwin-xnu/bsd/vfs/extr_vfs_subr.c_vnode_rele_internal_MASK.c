#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
struct uthread {TYPE_2__* uu_vreclaims; scalar_t__ uu_defer_reclaims; } ;
struct TYPE_16__ {scalar_t__ v_usecount; scalar_t__ v_type; int v_flag; scalar_t__ v_writecount; scalar_t__ v_kusecount; int v_iocount; int v_lflag; TYPE_1__* v_ubcinfo; struct TYPE_16__* v_defer_reclaimlist; int /*<<< orphan*/  v_tag; int /*<<< orphan*/  v_lock; } ;
struct TYPE_15__ {int /*<<< orphan*/  ui_control; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FWRITE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int O_EVTONLY ; 
 int VAGE ; 
 int VISDIRTY ; 
 int VL_DEAD ; 
 int VL_MARKTERM ; 
 int VL_NEEDINACTIVE ; 
 int VL_TERMINATE ; 
 int VNOCACHE_DATA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int VOPENEVT ; 
 int VRAGE ; 
 int VRAOFF ; 
 scalar_t__ VREG ; 
 int VSYSTEM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct uthread* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

void
FUNC17(vnode_t vp, int fmode, int dont_reenter, int locked)
{

	if ( !locked)
	        FUNC13(vp);
#if DIAGNOSTIC
	else
		lck_mtx_assert(&vp->v_lock, LCK_MTX_ASSERT_OWNED);
#endif
	if (--vp->v_usecount < 0)
		FUNC6("vnode_rele_ext: vp %p usecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.", vp,  vp->v_usecount, vp->v_tag, vp->v_type, vp->v_flag);

	if (fmode & FWRITE) {
		if (--vp->v_writecount < 0)
			FUNC6("vnode_rele_ext: vp %p writecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.", vp,  vp->v_writecount, vp->v_tag, vp->v_type, vp->v_flag);
	}
	if (fmode & O_EVTONLY) {
	        if (--vp->v_kusecount < 0)
		        FUNC6("vnode_rele_ext: vp %p kusecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.", vp,  vp->v_kusecount, vp->v_tag, vp->v_type, vp->v_flag);
	}
	if (vp->v_kusecount > vp->v_usecount)
		FUNC6("vnode_rele_ext: vp %p kusecount(%d) out of balance with usecount(%d).  v_tag = %d, v_type = %d, v_flag = %x.",vp, vp->v_kusecount, vp->v_usecount, vp->v_tag, vp->v_type, vp->v_flag);

	if ((vp->v_iocount > 0) || (vp->v_usecount > 0)) {
		/*
		 * vnode is still busy... if we're the last
		 * usecount, mark for a future call to VNOP_INACTIVE
		 * when the iocount finally drops to 0
		 */
		if (vp->v_usecount == 0) {
			vp->v_lflag |= VL_NEEDINACTIVE;
			vp->v_flag  &= ~(VNOCACHE_DATA | VRAOFF | VOPENEVT);
		}
		goto done;
	}
	vp->v_flag  &= ~(VNOCACHE_DATA | VRAOFF | VOPENEVT);

	if (FUNC0(vp->v_lflag, VL_TERMINATE | VL_DEAD) || dont_reenter) {
		/*
		 * vnode is being cleaned, or
		 * we've requested that we don't reenter
		 * the filesystem on this release...in
		 * the latter case, we'll mark the vnode aged
		 */
		if (dont_reenter) {
			if ( !(vp->v_lflag & (VL_TERMINATE | VL_DEAD | VL_MARKTERM)) ) {
				vp->v_lflag |= VL_NEEDINACTIVE;
				
				if (FUNC14(vp) == FALSE || vp->v_flag & VISDIRTY) {
					FUNC9(vp);
					goto done;
				}
			}
			vp->v_flag |= VAGE;
		}
		FUNC11(vp);

		goto done;
	}
	/*
	 * at this point both the iocount and usecount
	 * are zero
	 * pick up an iocount so that we can call
	 * VNOP_INACTIVE with the vnode lock unheld
	 */
	vp->v_iocount++;
#ifdef JOE_DEBUG
	record_vp(vp, 1);
#endif
        vp->v_lflag &= ~VL_NEEDINACTIVE;
	FUNC16(vp);

	FUNC1(vp, FUNC8());

	FUNC13(vp);
	/*
	 * because we dropped the vnode lock to call VNOP_INACTIVE
	 * the state of the vnode may have changed... we may have
	 * picked up an iocount, usecount or the MARKTERM may have
	 * been set... we need to reevaluate the reference counts
	 * to determine if we can call vnode_reclaim_internal at
	 * this point... if the reference counts are up, we'll pick
	 * up the MARKTERM state when they get subsequently dropped
	 */
	if ( (vp->v_iocount == 1) && (vp->v_usecount == 0) &&
	     ((vp->v_lflag & (VL_MARKTERM | VL_TERMINATE | VL_DEAD)) == VL_MARKTERM)) {
	        struct  uthread *ut;

	        ut = FUNC3(FUNC2());
		
		if (ut->uu_defer_reclaims) {
		        vp->v_defer_reclaimlist = ut->uu_vreclaims;
			ut->uu_vreclaims = vp;
			goto done;
		}
		FUNC12(vp);
	        FUNC15(vp, 1, 1, 0);
	}
	FUNC10(vp);
	FUNC11(vp);
done:
	if (vp->v_usecount == 0 && vp->v_type == VREG && !(vp->v_flag & VSYSTEM)) {

		if (vp->v_ubcinfo) {
			FUNC12(vp);
			FUNC5(vp->v_ubcinfo->ui_control, (vp->v_flag & VRAGE) == VRAGE);
		}
	}
	if ( !locked)
	        FUNC16(vp);
	return;
}