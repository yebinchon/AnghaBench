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
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  node; } ;
struct TYPE_7__ {int cur_state; scalar_t__ cur_prio; TYPE_1__ object; int /*<<< orphan*/  ready; int /*<<< orphan*/  priomap; } ;
typedef  TYPE_2__ lwp_cntrl ;
struct TYPE_8__ {scalar_t__ is_preemptible; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  _context_switch_want ; 
 TYPE_4__* _thr_executing ; 
 TYPE_2__* _thr_heir ; 

void FUNC7(lwp_cntrl *thethread,u32 state)
{
	u32 level,cur_state;

	FUNC0(level);

	cur_state = thethread->cur_state;
	if(cur_state&state) {
		cur_state = thethread->cur_state = FUNC3(cur_state,state);
		if(FUNC6(cur_state)) {
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