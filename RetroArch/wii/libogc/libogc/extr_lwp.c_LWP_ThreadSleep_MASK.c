#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  tqueue; } ;
typedef  TYPE_2__ tqueue_st ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  lwpq_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * queue; int /*<<< orphan*/ * ret_arg_1; int /*<<< orphan*/ * ret_arg; scalar_t__ ret_code; } ;
struct TYPE_8__ {TYPE_1__ wait; } ;
typedef  TYPE_3__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_THREADQ_NOTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* _thr_executing ; 

s32 FUNC6(lwpq_t thequeue)
{
	u32 level;
	tqueue_st *tq;
	lwp_cntrl *exec = NULL;

	tq = FUNC5(thequeue);
	if(!tq) return -1;

	exec = _thr_executing;
	FUNC0(level);
	FUNC3(&tq->tqueue);
	exec->wait.ret_code = 0;
	exec->wait.ret_arg = NULL;
	exec->wait.ret_arg_1 = NULL;
	exec->wait.queue = &tq->tqueue;
	exec->wait.id = thequeue;
	FUNC1(level);
	FUNC4(&tq->tqueue,LWP_THREADQ_NOTIMEOUT);
	FUNC2();
	return 0;
}