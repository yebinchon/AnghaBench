#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {scalar_t__ v_numoutput; int v_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 int VBWAIT ; 
 int VTHROTTLED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(vnode_t vp)
{
	if (vp) {
		int need_wakeup = 0;

	        FUNC0(-1, &vp->v_numoutput);

		FUNC2(vp);

		if (vp->v_numoutput < 0)
			FUNC1("vnode_writedone: numoutput < 0");

		if ((vp->v_flag & VTHROTTLED)) {
			vp->v_flag &= ~VTHROTTLED;
			need_wakeup = 1;
		}
		if ((vp->v_flag & VBWAIT) && (vp->v_numoutput == 0)) {
			vp->v_flag &= ~VBWAIT;
			need_wakeup = 1;
		}
		FUNC3(vp);
		
		if (need_wakeup)
			FUNC4((caddr_t)&vp->v_numoutput);
	}
}