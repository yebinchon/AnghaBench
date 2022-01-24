#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_8__ {int /*<<< orphan*/  node; } ;
struct TYPE_9__ {TYPE_1__ object; int /*<<< orphan*/  ready; int /*<<< orphan*/  priomap; int /*<<< orphan*/  cur_state; scalar_t__ cur_prio; } ;
typedef  TYPE_2__ lwp_cntrl ;
struct TYPE_10__ {scalar_t__ is_preemptible; } ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_STATES_TRANSIENT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  _context_switch_want ; 
 TYPE_3__* _thr_executing ; 
 TYPE_3__* _thr_heir ; 

void FUNC11(lwp_cntrl *thethread,u32 prio,u32 prependit)
{
	u32 level;

	FUNC10(thethread);

	if(thethread->cur_prio!=prio)
		FUNC9(thethread,prio);

	FUNC0(level);

	thethread->cur_state = FUNC3(thethread->cur_state,LWP_STATES_TRANSIENT);
	if(!FUNC7(thethread->cur_state)) {
		FUNC2(level);
		return;
	}

	FUNC4(&thethread->priomap);
	if(prependit)
		FUNC6(thethread->ready,&thethread->object.node);
	else
		FUNC5(thethread->ready,&thethread->object.node);

	FUNC1(level);

	FUNC8();

	if(!(_thr_executing==_thr_heir)
		&& _thr_executing->is_preemptible)
		_context_switch_want = TRUE;

	FUNC2(level);
}