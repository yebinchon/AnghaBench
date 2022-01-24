#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_14__ {int /*<<< orphan*/  information; } ;
struct TYPE_12__ {scalar_t__ ret_arg; } ;
struct TYPE_13__ {TYPE_9__ object; int /*<<< orphan*/  budget_algo; scalar_t__ cpu_time_budget; TYPE_1__ wait; int /*<<< orphan*/  join_list; int /*<<< orphan*/  timer; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_CPU_BUDGET_ALGO_NONE ; 
 int /*<<< orphan*/  LWP_STATES_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _thr_executing ; 

void FUNC13(lwp_cntrl *thethread)
{
	u32 level;
	void **value_ptr;
	lwp_cntrl *p;

	FUNC8(thethread,LWP_STATES_TRANSIENT);

	if(!FUNC10(thethread)) {
		if(FUNC11(&thethread->timer))
			FUNC12(&thethread->timer);
	}

	FUNC0(level);
	value_ptr = (void**)thethread->wait.ret_arg;
	while((p=FUNC9(&thethread->join_list))!=NULL) {
		*(void**)p->wait.ret_arg = value_ptr;
	}
	thethread->cpu_time_budget = 0;
	thethread->budget_algo = LWP_CPU_BUDGET_ALGO_NONE;
	FUNC1(level);

	FUNC2(_thr_executing,thethread);

	if(FUNC7(thethread))
		FUNC6();

	FUNC5(thethread);

	FUNC3(thethread->object.information,&thethread->object);
	FUNC4(thethread->object.information,&thethread->object);
}