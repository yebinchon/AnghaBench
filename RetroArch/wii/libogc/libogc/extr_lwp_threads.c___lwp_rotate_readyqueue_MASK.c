#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_12__ {scalar_t__ first; } ;
typedef  TYPE_1__ lwp_queue ;
typedef  int /*<<< orphan*/  lwp_node ;
struct TYPE_13__ {TYPE_1__* ready; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  _context_switch_want ; 
 TYPE_1__* _lwp_thr_ready ; 
 TYPE_2__* _thr_executing ; 
 TYPE_2__* _thr_heir ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,TYPE_2__*,TYPE_2__*) ; 

void FUNC9(u32 prio)
{
	u32 level;
	lwp_cntrl *exec;
	lwp_queue *ready;
	lwp_node *node;

	ready = &_lwp_thr_ready[prio];
	exec = _thr_executing;

	if(ready==exec->ready) {
		FUNC7();
		return;
	}

	FUNC0(level);
	if(!FUNC5(ready) && !FUNC6(ready)) {
		node = FUNC4(ready);
		FUNC3(ready,node);
	}
	FUNC1(level);

	if(_thr_heir->ready==ready)
		_thr_heir = (lwp_cntrl*)ready->first;

	if(exec!=_thr_heir)
		_context_switch_want = TRUE;

#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_rotate_readyqueue(%d,%p,%p)\n",prio,exec,_thr_heir);
#endif
	FUNC2(level);
}