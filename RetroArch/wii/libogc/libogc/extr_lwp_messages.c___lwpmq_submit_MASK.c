#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_16__ {int max_msgsize; scalar_t__ num_pendingmsgs; scalar_t__ max_pendingmsgs; int /*<<< orphan*/  wait_queue; } ;
typedef  TYPE_3__ mq_cntrl ;
struct TYPE_14__ {int size; void* buffer; } ;
struct TYPE_17__ {int prio; TYPE_1__ contents; } ;
typedef  TYPE_4__ mq_buffercntrl ;
struct TYPE_15__ {int cnt; int id; void* ret_arg_1; void* ret_arg; int /*<<< orphan*/ * queue; } ;
struct TYPE_18__ {TYPE_2__ wait; } ;
typedef  TYPE_5__ lwp_cntrl ;

/* Variables and functions */
 int LWP_MQ_STATUS_INVALID_SIZE ; 
 int LWP_MQ_STATUS_SUCCESSFUL ; 
 int LWP_MQ_STATUS_TOO_MANY ; 
 int LWP_MQ_STATUS_UNSATISFIED ; 
 int LWP_MQ_STATUS_UNSATISFIED_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*,int) ; 
 TYPE_5__* _thr_executing ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_3__*,void*,int,int,int,int) ; 

u32 FUNC10(mq_cntrl *mqueue,u32 id,void *buffer,u32 size,u32 type,u32 wait,u64 timeout)
{
	u32 level;
	lwp_cntrl *thread;
	mq_buffercntrl *msg;

#ifdef _LWPMQ_DEBUG
	printf("__lwpmq_submit(%p,%p,%d,%d,%d,%d)\n",mqueue,buffer,size,id,type,wait);
#endif
	if(size>mqueue->max_msgsize)
		return LWP_MQ_STATUS_INVALID_SIZE;

	if(mqueue->num_pendingmsgs==0) {
		thread = FUNC4(&mqueue->wait_queue);
		if(thread) {
			FUNC7(thread->wait.ret_arg,buffer,size);
			*(u32*)thread->wait.ret_arg_1 = size;
			thread->wait.cnt = type;
			return LWP_MQ_STATUS_SUCCESSFUL;
		}
	}

	if(mqueue->num_pendingmsgs<mqueue->max_pendingmsgs) {
		msg = FUNC6(mqueue);
		if(!msg) return LWP_MQ_STATUS_UNSATISFIED;

		FUNC7(msg->contents.buffer,buffer,size);
		msg->contents.size = size;
		msg->prio = type;
		FUNC8(mqueue,msg,type);
		return LWP_MQ_STATUS_SUCCESSFUL;
	}

	if(!wait) return LWP_MQ_STATUS_TOO_MANY;
	if(FUNC2()) return LWP_MQ_STATUS_UNSATISFIED;

	{
		lwp_cntrl *exec = _thr_executing;

		FUNC0(level);
		FUNC3(&mqueue->wait_queue);
		exec->wait.queue = &mqueue->wait_queue;
		exec->wait.id = id;
		exec->wait.ret_arg = (void*)buffer;
		exec->wait.ret_arg_1 = (void*)size;
		exec->wait.cnt = type;
		FUNC1(level);

		FUNC5(&mqueue->wait_queue,timeout);
	}
	return LWP_MQ_STATUS_UNSATISFIED_WAIT;
}