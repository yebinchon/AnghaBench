#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_18__ {int num_pendingmsgs; int /*<<< orphan*/  wait_queue; } ;
typedef  TYPE_3__ mq_cntrl ;
struct TYPE_16__ {int size; void* buffer; } ;
struct TYPE_19__ {int /*<<< orphan*/  prio; TYPE_1__ contents; } ;
typedef  TYPE_4__ mq_buffercntrl ;
struct TYPE_17__ {int ret_code; void* ret_arg; int id; void* ret_arg_1; int /*<<< orphan*/ * queue; int /*<<< orphan*/  cnt; } ;
struct TYPE_20__ {TYPE_2__ wait; } ;
typedef  TYPE_5__ lwp_cntrl ;

/* Variables and functions */
 int LWP_MQ_STATUS_SUCCESSFUL ; 
 int LWP_MQ_STATUS_UNSATISFIED_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_4__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* _thr_executing ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_3__*,int,void*,int*,int,int) ; 

u32 FUNC10(mq_cntrl *mqueue,u32 id,void *buffer,u32 *size,u32 wait,u64 timeout)
{
	u32 level;
	mq_buffercntrl *msg;
	lwp_cntrl *exec,*thread;

	exec = _thr_executing;
	exec->wait.ret_code = LWP_MQ_STATUS_SUCCESSFUL;
#ifdef _LWPMQ_DEBUG
	printf("__lwpmq_seize(%p,%d,%p,%p,%d,%d)\n",mqueue,id,buffer,size,wait,mqueue->num_pendingmsgs);
#endif

	FUNC0(level);
	if(mqueue->num_pendingmsgs!=0) {
		--mqueue->num_pendingmsgs;
		msg = FUNC7(mqueue);
		FUNC1(level);

		*size = msg->contents.size;
		exec->wait.cnt = msg->prio;
		FUNC5(buffer,msg->contents.buffer,*size);

		thread = FUNC3(&mqueue->wait_queue);
		if(!thread) {
			FUNC6(mqueue,msg);
			return LWP_MQ_STATUS_SUCCESSFUL;
		}

		msg->prio = thread->wait.cnt;
		msg->contents.size = (u32)thread->wait.ret_arg_1;
		FUNC5(msg->contents.buffer,thread->wait.ret_arg,msg->contents.size);

		FUNC8(mqueue,msg,msg->prio);
		return LWP_MQ_STATUS_SUCCESSFUL;
	}

	if(!wait) {
		FUNC1(level);
		exec->wait.ret_code = LWP_MQ_STATUS_UNSATISFIED_NOWAIT;
		return LWP_MQ_STATUS_UNSATISFIED_NOWAIT;
	}

	FUNC2(&mqueue->wait_queue);
	exec->wait.queue = &mqueue->wait_queue;
	exec->wait.id = id;
	exec->wait.ret_arg = (void*)buffer;
	exec->wait.ret_arg_1 = (void*)size;
	FUNC1(level);

	FUNC4(&mqueue->wait_queue,timeout);
	return LWP_MQ_STATUS_SUCCESSFUL;
}