#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int s32 ;
typedef  scalar_t__ mutex_t ;
typedef  int /*<<< orphan*/  cond_t ;
struct TYPE_6__ {scalar_t__ lock; int /*<<< orphan*/  wait_queue; } ;
typedef  TYPE_2__ cond_st ;
struct TYPE_5__ {scalar_t__ ret_code; int /*<<< orphan*/  id; int /*<<< orphan*/ * queue; } ;
struct TYPE_7__ {TYPE_1__ wait; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ LWP_MUTEX_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* _thr_executing ; 

__attribute__((used)) static s32 FUNC8(cond_t cond,mutex_t mutex,u64 timeout,u8 timedout)
{
	u32 status,mstatus,level;
	cond_st *thecond = FUNC4(cond);

	if(!thecond) return -1;

	if(thecond->lock!=LWP_MUTEX_NULL && thecond->lock!=mutex) {
		FUNC5();
		return EINVAL;
	}

	FUNC1(mutex);
	if(!timedout) {
		thecond->lock = mutex;
		FUNC2(level);
		FUNC6(&thecond->wait_queue);
		_thr_executing->wait.ret_code = 0;
		_thr_executing->wait.queue = &thecond->wait_queue;
		_thr_executing->wait.id = cond;
		FUNC3(level);
		FUNC7(&thecond->wait_queue,timeout);
		FUNC5();

		status = _thr_executing->wait.ret_code;
		if(status && status!=ETIMEDOUT)
			return status;
	} else {
		FUNC5();
		status = ETIMEDOUT;
	}

	mstatus = FUNC0(mutex);
	if(mstatus)
		return EINVAL;

	return status;
}