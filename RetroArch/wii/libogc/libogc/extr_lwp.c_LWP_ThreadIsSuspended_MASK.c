#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lwp_t ;
struct TYPE_3__ {int /*<<< orphan*/  cur_state; } ;
typedef  TYPE_1__ lwp_cntrl ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

BOOL FUNC3(lwp_t thethread)
{
	BOOL state;
	lwp_cntrl *lwp_thread;

	lwp_thread = FUNC0(thethread);
  	if(!lwp_thread) return FALSE;

	state = (FUNC1(lwp_thread->cur_state) ? TRUE : FALSE);

	FUNC2();
	return state;
}