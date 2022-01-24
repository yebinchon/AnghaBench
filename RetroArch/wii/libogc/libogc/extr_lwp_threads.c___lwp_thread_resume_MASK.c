#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  node; } ;
struct TYPE_7__ {scalar_t__ suspendcnt; scalar_t__ cur_state; scalar_t__ cur_prio; TYPE_1__ object; int /*<<< orphan*/  ready; int /*<<< orphan*/  priomap; } ;
typedef  TYPE_2__ lwp_cntrl ;
struct TYPE_8__ {scalar_t__ is_preemptible; } ;

/* Variables and functions */
 scalar_t__ LWP_STATES_SUSPENDED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ _context_switch_want ; 
 TYPE_4__* _thr_executing ; 
 TYPE_2__* _thr_heir ; 

void FUNC7(lwp_cntrl *thethread,u32 force)
{
	u32 level,state;

	FUNC0(level);

	if(force==TRUE)
		thethread->suspendcnt = 0;
	else
		thethread->suspendcnt--;

	if(thethread->suspendcnt>0) {
		FUNC2(level);
		return;
	}

	state = thethread->cur_state;
	if(state&LWP_STATES_SUSPENDED) {
		state = thethread->cur_state = FUNC3(thethread->cur_state,LWP_STATES_SUSPENDED);
		if(FUNC6(state)) {
			FUNC4(&thethread->priomap);
			FUNC5(thethread->ready,&thethread->object.node);
			FUNC1(level);
			if(thethread->cur_prio<_thr_heir->cur_prio) {
				_thr_heir = thethread;
				if(_thr_executing->is_preemptible
					|| thethread->cur_prio==0)
				_context_switch_want = TRUE;
			}
		}
	}
	FUNC2(level);
}