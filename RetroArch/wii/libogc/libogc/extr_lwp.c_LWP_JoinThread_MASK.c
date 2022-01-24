#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  lwp_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * queue; void* ret_arg; int /*<<< orphan*/ * ret_arg_1; scalar_t__ ret_code; } ;
struct TYPE_7__ {int /*<<< orphan*/  join_list; TYPE_1__ wait; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  EDEADLK ; 
 int /*<<< orphan*/  LWP_WD_NOTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* _thr_executing ; 

s32 FUNC7(lwp_t thethread,void **value_ptr)
{
	u32 level;
	void *return_ptr;
	lwp_cntrl *exec,*lwp_thread;

	lwp_thread = FUNC2(thethread);
	if(!lwp_thread) return 0;

	if(FUNC4(lwp_thread)) {
		FUNC3();
		return EDEADLK;			//EDEADLK
	}

	exec = _thr_executing;
	FUNC0(level);
	FUNC5(&lwp_thread->join_list);
	exec->wait.ret_code = 0;
	exec->wait.ret_arg_1 = NULL;
	exec->wait.ret_arg = (void*)&return_ptr;
	exec->wait.queue = &lwp_thread->join_list;
	exec->wait.id = thethread;
	FUNC1(level);
	FUNC6(&lwp_thread->join_list,LWP_WD_NOTIMEOUT);
	FUNC3();

	if(value_ptr) *value_ptr = return_ptr;
	return 0;
}