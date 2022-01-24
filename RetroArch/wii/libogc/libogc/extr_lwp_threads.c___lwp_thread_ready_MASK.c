#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  node; } ;
struct TYPE_9__ {TYPE_1__ object; int /*<<< orphan*/  ready; int /*<<< orphan*/  priomap; int /*<<< orphan*/  cur_state; } ;
typedef  TYPE_2__ lwp_cntrl ;
struct TYPE_10__ {scalar_t__ is_preemptible; } ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_STATES_READY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  _context_switch_want ; 
 TYPE_5__* _thr_executing ; 
 TYPE_2__* _thr_heir ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*) ; 

void FUNC8(lwp_cntrl *thethread)
{
	u32 level;
	lwp_cntrl *heir;

	FUNC0(level);
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_ready(%p)\n",thethread);
#endif
	thethread->cur_state = LWP_STATES_READY;
	FUNC3(&thethread->priomap);
	FUNC4(thethread->ready,&thethread->object.node);
	FUNC1(level);

	FUNC5();
	heir = _thr_heir;
	if(!(FUNC6(heir)) && _thr_executing->is_preemptible)
		_context_switch_want = TRUE;

	FUNC2(level);
}