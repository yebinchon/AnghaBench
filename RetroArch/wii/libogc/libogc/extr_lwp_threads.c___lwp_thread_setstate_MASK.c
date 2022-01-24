#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lwp_queue ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
struct TYPE_8__ {int /*<<< orphan*/  cur_state; TYPE_1__ object; int /*<<< orphan*/  priomap; int /*<<< orphan*/ * ready; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  _context_switch_want ; 
 int /*<<< orphan*/  _thr_heir ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC13(lwp_cntrl *thethread,u32 state)
{
	u32 level;
	lwp_queue *ready;

	ready = thethread->ready;
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_setstate(%d,%p,%p,%08x)\n",_context_switch_want,_thr_heir,thethread,thethread->cur_state);
#endif
	FUNC0(level);
	if(!FUNC8(thethread->cur_state)) {
		thethread->cur_state = FUNC3(thethread->cur_state,state);
		FUNC2(level);
		return;
	}

	thethread->cur_state = state;
	if(FUNC7(ready)) {
		FUNC6(ready);
		FUNC4(&thethread->priomap);
	} else
		FUNC5(&thethread->object.node);
	FUNC1(level);

	if(FUNC11(thethread))
		FUNC9();
	if(FUNC10(thethread))
		_context_switch_want = TRUE;
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_setstate(%d,%p,%p,%08x)\n",_context_switch_want,_thr_heir,thethread,thethread->cur_state);
#endif
	FUNC2(level);
}