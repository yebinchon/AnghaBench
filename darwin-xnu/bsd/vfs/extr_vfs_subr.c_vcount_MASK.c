#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
struct TYPE_13__ {int v_usecount; int v_kusecount; int v_id; scalar_t__ v_rdev; scalar_t__ v_type; int v_iocount; struct TYPE_13__* v_specnext; TYPE_1__* v_specinfo; struct TYPE_13__** v_hashchain; } ;
struct TYPE_12__ {int si_opencount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

int
FUNC10(vnode_t vp)
{
	vnode_t vq, vnext;
	int count;
	int vid;

	if (!FUNC4(vp)) {
		return (vp->v_usecount - vp->v_kusecount);		
	}

loop:
	if (!FUNC3(vp))
	        return (vp->v_specinfo->si_opencount);
	count = 0;

	FUNC0();
	/*
	 * Grab first vnode and its vid.
	 */
	vq = *vp->v_hashchain;
	vid = vq ? vq->v_id : 0;

	FUNC1();

	while (vq) {
		/*
		 * Attempt to get the vnode outside the SPECHASH lock.
		 */
		if (FUNC2(vq, vid)) {
			goto loop;
		}
		FUNC5(vq);

		if (vq->v_rdev == vp->v_rdev && vq->v_type == vp->v_type) {
			if ((vq->v_usecount == 0) && (vq->v_iocount == 1)  && vq != vp) {
				/*
				 * Alias, but not in use, so flush it out.
				 */
				FUNC8(vq, 1, 1, 0);
				FUNC7(vq);
				FUNC9(vq);
				goto loop;
			}
			count += vq->v_specinfo->si_opencount;
		}
		FUNC9(vq);

		FUNC0();
		/*
		 * must do this with the reference still held on 'vq'
		 * so that it can't be destroyed while we're poking
		 * through v_specnext
		 */
		vnext = vq->v_specnext;
		vid = vnext ? vnext->v_id : 0;

		FUNC1();

		FUNC6(vq);

		vq = vnext;
	}

	return (count);
}