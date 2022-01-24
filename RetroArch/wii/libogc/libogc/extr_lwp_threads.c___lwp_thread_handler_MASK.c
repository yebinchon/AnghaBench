#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  ret_arg; } ;
struct TYPE_6__ {TYPE_1__ wait; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* entry ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  isr_level; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* _thr_executing ; 
 int /*<<< orphan*/  _thread_dispatch_disable_level ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5()
{
	u32 level;
	lwp_cntrl *exec;

	exec = _thr_executing;
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_handler(%p,%d)\n",exec,_thread_dispatch_disable_level);
#endif
	level = exec->isr_level;
	FUNC0(level);
	FUNC1();
	exec->wait.ret_arg = exec->entry(exec->arg);

	FUNC2(exec->wait.ret_arg);
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_handler(%p): thread returned(%p)\n",exec,exec->wait.ret_arg);
#endif
}