#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {scalar_t__ first; } ;
typedef  TYPE_2__ lwp_queue ;
struct TYPE_9__ {int /*<<< orphan*/  node; } ;
struct TYPE_11__ {TYPE_1__ object; TYPE_2__* ready; } ;
typedef  TYPE_3__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  _context_switch_want ; 
 TYPE_3__* _thr_executing ; 
 TYPE_3__* _thr_heir ; 

void FUNC7()
{
	u32 level;
	lwp_cntrl *exec;
	lwp_queue *ready;

	exec = _thr_executing;
	ready = exec->ready;

	FUNC0(level);
	if(FUNC5(ready)) {
		FUNC2(level);
		return;
	}

	FUNC4(&exec->object.node);
	FUNC3(ready,&exec->object.node);

	FUNC1(level);

	if(FUNC6(exec))
		_thr_heir = (lwp_cntrl*)ready->first;

	_context_switch_want = TRUE;
	FUNC2(level);
}