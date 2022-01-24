#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  mram_addr; int /*<<< orphan*/  aram_addr; int /*<<< orphan*/  dir; int /*<<< orphan*/  callback; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ ARQRequest ;

/* Variables and functions */
 int /*<<< orphan*/  ARQ_TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  __ARQCallbackLo ; 
 scalar_t__ __ARQChunkSize ; 
 TYPE_1__* __ARQReqPendingLo ; 
 int /*<<< orphan*/  __ARQReqQueueLo ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2()
{
	ARQRequest *req;

	if(!__ARQReqPendingLo) {
		req = (ARQRequest*)FUNC1(&__ARQReqQueueLo);
		__ARQReqPendingLo = req;
	}

	req = __ARQReqPendingLo;
	if(req) {
		req->state = ARQ_TASK_RUNNING;
		if(req->len<=__ARQChunkSize) {
			FUNC0(req->dir,req->mram_addr,req->aram_addr,req->len);
			__ARQCallbackLo = __ARQReqPendingLo->callback;
		} else {
			FUNC0(req->dir,req->mram_addr,req->aram_addr,__ARQChunkSize);
			__ARQReqPendingLo->len -= __ARQChunkSize;
			__ARQReqPendingLo->aram_addr += __ARQChunkSize;
			__ARQReqPendingLo->mram_addr += __ARQChunkSize;
		}
	}
}