#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int max_pendingmsgs; int max_msgsize; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  pending_msgs; int /*<<< orphan*/ * msq_buffers; int /*<<< orphan*/  inactive_msgs; scalar_t__ num_pendingmsgs; } ;
typedef  TYPE_1__ mq_cntrl ;
typedef  int /*<<< orphan*/  mq_buffercntrl ;
typedef  int /*<<< orphan*/  mq_buffer ;
typedef  int /*<<< orphan*/  mq_attr ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_MQ_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  LWP_STATES_WAITING_FOR_MESSAGE ; 
 int /*<<< orphan*/  LWP_THREADQ_MODEFIFO ; 
 int /*<<< orphan*/  LWP_THREADQ_MODEPRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

u32 FUNC7(mq_cntrl *mqueue,mq_attr *attrs,u32 max_pendingmsgs,u32 max_msgsize)
{
	u32 alloc_msgsize;
	u32 buffering_req;

#ifdef _LWPMQ_DEBUG
	printf("__lwpmq_initialize(%p,%p,%d,%d)\n",mqueue,attrs,max_pendingmsgs,max_msgsize);
#endif
	mqueue->max_pendingmsgs = max_pendingmsgs;
	mqueue->num_pendingmsgs = 0;
	mqueue->max_msgsize = max_msgsize;
	FUNC5(mqueue,NULL,NULL);

	alloc_msgsize = max_msgsize;
	if(alloc_msgsize&(sizeof(u32)-1))
		alloc_msgsize = (alloc_msgsize+sizeof(u32))&~(sizeof(u32)-1);

	buffering_req = max_pendingmsgs*(alloc_msgsize+sizeof(mq_buffercntrl));
	mqueue->msq_buffers = (mq_buffer*)FUNC3(buffering_req);

	if(!mqueue->msq_buffers) return 0;

	FUNC1(&mqueue->inactive_msgs,mqueue->msq_buffers,max_pendingmsgs,(alloc_msgsize+sizeof(mq_buffercntrl)));
	FUNC0(&mqueue->pending_msgs);
	FUNC2(&mqueue->wait_queue,FUNC4(attrs)?LWP_THREADQ_MODEPRIORITY:LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_FOR_MESSAGE,LWP_MQ_STATUS_TIMEOUT);

	return 1;
}