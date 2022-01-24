#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  lwp_mutex_attr ;
struct TYPE_4__ {int nest_cnt; int /*<<< orphan*/  wait_queue; TYPE_2__* holder; scalar_t__ blocked_cnt; scalar_t__ lock; int /*<<< orphan*/  atrrs; } ;
typedef  TYPE_1__ lwp_mutex ;
struct TYPE_5__ {int /*<<< orphan*/  res_cnt; } ;

/* Variables and functions */
 scalar_t__ LWP_MUTEX_LOCKED ; 
 int /*<<< orphan*/  LWP_MUTEX_TIMEOUT ; 
 int /*<<< orphan*/  LWP_STATES_WAITING_FOR_MUTEX ; 
 int /*<<< orphan*/  LWP_THREADQ_MODEFIFO ; 
 int /*<<< orphan*/  LWP_THREADQ_MODEPRIORITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* _thr_executing ; 

void FUNC4(lwp_mutex *mutex,lwp_mutex_attr *attrs,u32 init_lock)
{
	mutex->atrrs = *attrs;
	mutex->lock = init_lock;
	mutex->blocked_cnt = 0;

	if(init_lock==LWP_MUTEX_LOCKED) {
		mutex->nest_cnt = 1;
		mutex->holder = _thr_executing;
		if(FUNC1(attrs) || FUNC2(attrs))
			_thr_executing->res_cnt++;
	} else {
		mutex->nest_cnt = 0;
		mutex->holder = NULL;
	}

	FUNC3(&mutex->wait_queue,FUNC0(attrs)?LWP_THREADQ_MODEFIFO:LWP_THREADQ_MODEPRIORITY,LWP_STATES_WAITING_FOR_MUTEX,LWP_MUTEX_TIMEOUT);
}