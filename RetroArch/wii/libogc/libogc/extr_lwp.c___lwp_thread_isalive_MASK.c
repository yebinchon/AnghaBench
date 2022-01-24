#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ lwp_t ;
struct TYPE_2__ {int* stack; int /*<<< orphan*/  cur_state; } ;
typedef  TYPE_1__ lwp_cntrl ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ LWP_OBJTYPE_THREAD ; 
 scalar_t__ LWP_THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lwp_thr_objects ; 

BOOL FUNC5(lwp_t thr_id)
{
	if(thr_id==LWP_THREAD_NULL || FUNC1(thr_id)!=LWP_OBJTYPE_THREAD) return FALSE;

	lwp_cntrl *thethread = (lwp_cntrl*)FUNC2(&_lwp_thr_objects,FUNC0(thr_id));

	if(thethread) {
		u32 *stackbase = thethread->stack;
		if(stackbase[0]==0xDEADBABE && !FUNC3(thethread->cur_state) && !FUNC4(thethread->cur_state))
			return TRUE;
	}

	return FALSE;
}