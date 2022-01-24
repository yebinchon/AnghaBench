#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lwp_queue ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
struct TYPE_5__ {TYPE_1__ object; int /*<<< orphan*/  priomap; int /*<<< orphan*/  cur_state; int /*<<< orphan*/ * ready; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_STATES_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(lwp_cntrl *thethread)
{
	u32 level,oldstates;
	lwp_queue *ready;

	ready = thethread->ready;

	FUNC0(level);

	oldstates = thethread->cur_state;
	thethread->cur_state = FUNC6(oldstates,LWP_STATES_TRANSIENT);

	if(FUNC7(oldstates)) {
		if(FUNC5(ready)) {
			FUNC4(ready);
			FUNC2(&thethread->priomap);
		} else {
			FUNC3(&thethread->object.node);
		}
	}

	FUNC1(level);
}