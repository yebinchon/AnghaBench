#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_11__ {int /*<<< orphan*/  fifo; } ;
struct TYPE_15__ {int sync_state; TYPE_1__ queues; } ;
typedef  TYPE_5__ lwp_thrqueue ;
struct TYPE_14__ {TYPE_3__* queue; int /*<<< orphan*/  ret_code; } ;
struct TYPE_12__ {int /*<<< orphan*/  node; } ;
struct TYPE_16__ {int /*<<< orphan*/  timer; TYPE_4__ wait; TYPE_2__ object; } ;
typedef  TYPE_6__ lwp_cntrl ;
struct TYPE_13__ {int /*<<< orphan*/  timeout_state; } ;

/* Variables and functions */
#define  LWP_THREADQ_NOTHINGHAPPEND 131 
#define  LWP_THREADQ_SATISFIED 130 
#define  LWP_THREADQ_SYNCHRONIZED 129 
#define  LWP_THREADQ_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_6__*,int) ; 

void FUNC8(lwp_thrqueue *queue,lwp_cntrl *thethread,u64 timeout)
{
	u32 level,sync_state;

	FUNC0(level);

	sync_state = queue->sync_state;
	queue->sync_state = LWP_THREADQ_SYNCHRONIZED;
#ifdef _LWPTHRQ_DEBUG
	printf("__lwp_threadqueue_enqueuefifo(%p,%d)\n",thethread,sync_state);
#endif
	switch(sync_state) {
		case LWP_THREADQ_SYNCHRONIZED:
			break;
		case LWP_THREADQ_NOTHINGHAPPEND:
			FUNC2(&queue->queues.fifo,&thethread->object.node);
			FUNC1(level);
			return;
		case LWP_THREADQ_TIMEOUT:
			thethread->wait.ret_code = thethread->wait.queue->timeout_state;
			FUNC1(level);
			break;
		case LWP_THREADQ_SATISFIED:
			if(FUNC5(&thethread->timer)) {
				FUNC4(&thethread->timer);
				FUNC1(level);
				FUNC6(&thethread->timer);
			} else
				FUNC1(level);

			break;
	}
	FUNC3(thethread);
}