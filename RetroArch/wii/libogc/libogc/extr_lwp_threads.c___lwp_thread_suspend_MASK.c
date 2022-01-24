#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lwp_queue ;
struct TYPE_6__ {int /*<<< orphan*/  node; } ;
struct TYPE_7__ {TYPE_1__ object; int /*<<< orphan*/  priomap; int /*<<< orphan*/  cur_state; int /*<<< orphan*/  suspendcnt; int /*<<< orphan*/ * ready; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_STATES_SUSPENDED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  _context_switch_want ; 

void FUNC12(lwp_cntrl *thethread)
{
	u32 level;
	lwp_queue *ready;

	ready = thethread->ready;

	FUNC0(level);
	thethread->suspendcnt++;
	if(!FUNC8(thethread->cur_state)) {
		thethread->cur_state = FUNC7(thethread->cur_state,LWP_STATES_SUSPENDED);
		FUNC2(level);
		return;
	}

	thethread->cur_state = LWP_STATES_SUSPENDED;
	if(FUNC6(ready)) {
		FUNC5(ready);
		FUNC3(&thethread->priomap);
	} else {
		FUNC4(&thethread->object.node);
	}
	FUNC1(level);

	if(FUNC11(thethread))
		FUNC9();

	if(FUNC10(thethread))
		_context_switch_want = TRUE;

	FUNC2(level);
}