#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/ * callback; scalar_t__ len; scalar_t__ aram_addr; scalar_t__ mram_addr; scalar_t__ dir; int /*<<< orphan*/  state; int /*<<< orphan*/  node; scalar_t__ prio; scalar_t__ owner; } ;
typedef  TYPE_1__ ARQRequest ;
typedef  int /*<<< orphan*/ * ARQCallback ;

/* Variables and functions */
 scalar_t__ ARQ_PRIO_LO ; 
 int /*<<< orphan*/  ARQ_TASK_READY ; 
 int /*<<< orphan*/  ARQ_TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * __ARQCallbackDummy ; 
 int /*<<< orphan*/ * __ARQCallbackHi ; 
 TYPE_1__* __ARQReqPendingHi ; 
 int /*<<< orphan*/  __ARQReqPendingLo ; 
 int /*<<< orphan*/  __ARQReqQueueHi ; 
 int /*<<< orphan*/  __ARQReqQueueLo ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(ARQRequest *req,u32 owner,u32 dir,u32 prio,u32 aram_addr,u32 mram_addr,u32 len,ARQCallback cb)
{
	u32 level;
	ARQRequest *p;

	req->state = ARQ_TASK_READY;
	req->dir = dir;
	req->owner = owner;
	req->aram_addr = aram_addr;
	req->mram_addr = mram_addr;
	req->len = len;
	req->prio = prio;
	req->callback = (cb==NULL) ? __ARQCallbackDummy : cb;

	FUNC1(level);

	if(prio==ARQ_PRIO_LO) FUNC4(&__ARQReqQueueLo,&req->node);
	else FUNC4(&__ARQReqQueueHi,&req->node);

	if(!__ARQReqPendingLo && !__ARQReqPendingHi) {
		p = (ARQRequest*)FUNC5(&__ARQReqQueueHi);
		if(p) {
			p->state = ARQ_TASK_RUNNING;
			FUNC0(p->dir,p->mram_addr,p->aram_addr,p->len);
			__ARQCallbackHi = p->callback;
			__ARQReqPendingHi = p;
		}
		if(!__ARQReqPendingHi) FUNC3();
	}
	FUNC2(level);
}