#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  fifo; } ;
struct TYPE_9__ {int sync_state; TYPE_1__ queues; } ;
typedef  TYPE_2__ lwp_thrqueue ;
struct TYPE_10__ {int /*<<< orphan*/  timer; } ;
typedef  TYPE_3__ lwp_cntrl ;

/* Variables and functions */
#define  LWP_THREADQ_NOTHINGHAPPEND 131 
#define  LWP_THREADQ_SATISFIED 130 
#define  LWP_THREADQ_SYNCHRONIZED 129 
#define  LWP_THREADQ_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* _thr_executing ; 

lwp_cntrl* FUNC8(lwp_thrqueue *queue)
{
	u32 level;
	lwp_cntrl *ret;

	FUNC0(level);
	if(!FUNC3(&queue->queues.fifo)) {
		ret = (lwp_cntrl*)FUNC2(&queue->queues.fifo);
		if(!FUNC6(&ret->timer)) {
			FUNC1(level);
			FUNC4(ret);
		} else {
			FUNC5(&ret->timer);
			FUNC1(level);
			FUNC7(&ret->timer);
			FUNC4(ret);
		}
		return ret;
	}

	switch(queue->sync_state) {
		case LWP_THREADQ_SYNCHRONIZED:
		case LWP_THREADQ_SATISFIED:
			FUNC1(level);
			return NULL;
		case LWP_THREADQ_NOTHINGHAPPEND:
		case LWP_THREADQ_TIMEOUT:
			queue->sync_state = LWP_THREADQ_SATISFIED;
			FUNC1(level);
			return _thr_executing;
	}
	return NULL;
}