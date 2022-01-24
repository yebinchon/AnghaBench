#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* _thr_allocated_fp ; 
 TYPE_1__* _thr_executing ; 

void FUNC6()
{
	u32 level;
	lwp_cntrl *exec;

	FUNC0(level);
	exec = _thr_executing;
#ifdef _LWPTHREADS_DEBUG
	__lwp_dumpcontext_fp(exec,_thr_allocated_fp);
#endif
	if(!FUNC3(exec)) {
		if(_thr_allocated_fp) FUNC5(&_thr_allocated_fp->context);
		FUNC4(&exec->context);
		_thr_allocated_fp = exec;
	}
	FUNC1(level);
}