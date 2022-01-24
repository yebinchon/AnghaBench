#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int s32 ;
typedef  int /*<<< orphan*/  lwp_t ;
struct TYPE_4__ {int /*<<< orphan*/  cur_state; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
 int LWP_NOT_SUSPENDED ; 
 int LWP_SUCCESSFUL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

s32 FUNC4(lwp_t thethread)
{
	lwp_cntrl *lwp_thread;

	lwp_thread = FUNC0(thethread);
	if(!lwp_thread) return -1;

	if(FUNC1(lwp_thread->cur_state)) {
		FUNC3(lwp_thread,TRUE);
		FUNC2();
		return LWP_SUCCESSFUL;
	}
	FUNC2();
	return LWP_NOT_SUSPENDED;
}