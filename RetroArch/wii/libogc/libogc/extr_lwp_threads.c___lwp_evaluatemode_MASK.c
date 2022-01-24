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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ is_preemptible; int /*<<< orphan*/  cur_state; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  _context_switch_want ; 
 TYPE_1__* _thr_executing ; 

u32 FUNC2()
{
	lwp_cntrl *exec;

	exec = _thr_executing;
	if(!FUNC0(exec->cur_state)
		|| (!FUNC1(exec) && exec->is_preemptible)){
		_context_switch_want = TRUE;
		return TRUE;
	}
	return FALSE;
}