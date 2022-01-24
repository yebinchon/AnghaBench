#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int mode; int sync_state; } ;
typedef  TYPE_1__ lwp_thrqueue ;
typedef  int /*<<< orphan*/  lwp_cntrl ;

/* Variables and functions */
#define  LWP_THREADQ_MODEFIFO 129 
#define  LWP_THREADQ_MODEPRIORITY 128 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * _thr_executing ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

lwp_cntrl* FUNC3(lwp_thrqueue *queue)
{
	lwp_cntrl *ret = NULL;

#ifdef _LWPTHRQ_DEBUG
	printf("__lwp_threadqueue_dequeue(%p,%p,%d,%d)\n",queue,_thr_executing,queue->mode,queue->sync_state);
#endif
	switch(queue->mode) {
		case LWP_THREADQ_MODEFIFO:
			ret = FUNC0(queue);
			break;
		case LWP_THREADQ_MODEPRIORITY:
			ret = FUNC1(queue);
			break;
		default:
			ret = NULL;
			break;
	}
#ifdef _LWPTHRQ_DEBUG
	printf("__lwp_threadqueue_dequeue(%p,%p,%d,%d)\n",queue,ret,queue->mode,queue->sync_state);
#endif
	return ret;
}