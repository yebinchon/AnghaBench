#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_9__ {scalar_t__ next; } ;
struct TYPE_8__ {scalar_t__ first; } ;
struct TYPE_7__ {scalar_t__ owner; TYPE_3__ node; } ;
typedef  TYPE_1__ ARQRequest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * __ARQCallbackLo ; 
 TYPE_1__* __ARQReqPendingLo ; 
 TYPE_2__ __ARQReqQueueHi ; 
 TYPE_2__ __ARQReqQueueLo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

u32 FUNC4(u32 owner)
{
	u32 level,cnt;
	ARQRequest *req;

	FUNC0(level);

	cnt = 0;
	req = (ARQRequest*)__ARQReqQueueHi.first;
	while(req!=(ARQRequest*)FUNC3(&__ARQReqQueueHi)) {
		if(req->owner==owner) {
			FUNC2(&req->node);
			cnt++;
		}
		req = (ARQRequest*)req->node.next;
	}

	req = (ARQRequest*)__ARQReqQueueLo.first;
	while(req!=(ARQRequest*)FUNC3(&__ARQReqQueueLo)) {
		if(req->owner==owner) {
			FUNC2(&req->node);
			cnt++;
		}
		req = (ARQRequest*)req->node.next;
	}
	if(__ARQReqPendingLo && __ARQReqPendingLo==req && __ARQCallbackLo==NULL) __ARQReqPendingLo = NULL;
	FUNC1(level);

	return cnt;
}