#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_15__ {int mode; int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ lwp_thrqueue ;
struct TYPE_14__ {int /*<<< orphan*/  id; } ;
struct TYPE_16__ {int /*<<< orphan*/  timer; TYPE_1__ object; } ;
typedef  TYPE_3__ lwp_cntrl ;

/* Variables and functions */
#define  LWP_THREADQ_MODEFIFO 129 
#define  LWP_THREADQ_MODEPRIORITY 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __lwp_threadqueue_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* _thr_executing ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*,TYPE_3__*,int) ; 

void FUNC6(lwp_thrqueue *queue,u64 timeout)
{
	lwp_cntrl *thethread;

	thethread = _thr_executing;
	FUNC0(thethread,queue->state);

	if(timeout) {
		FUNC3(&thethread->timer,__lwp_threadqueue_timeout,thethread->object.id,thethread);
		FUNC4(&thethread->timer,timeout);
	}

#ifdef _LWPTHRQ_DEBUG
	printf("__lwp_threadqueue_enqueue(%p,%p,%d)\n",queue,thethread,queue->mode);
#endif
	switch(queue->mode) {
		case LWP_THREADQ_MODEFIFO:
			FUNC1(queue,thethread,timeout);
			break;
		case LWP_THREADQ_MODEPRIORITY:
			FUNC2(queue,thethread,timeout);
			break;
	}
}