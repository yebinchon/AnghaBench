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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef  TYPE_1__ ARQRequest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ARQ_TASK_FINISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ARQCallbackSync ; 
 int /*<<< orphan*/  __ARQSyncQueue ; 

void FUNC4(ARQRequest *req,u32 owner,u32 dir,u32 prio,u32 aram_addr,u32 mram_addr,u32 len)
{
	u32 level;

	FUNC0(req,owner,dir,prio,aram_addr,mram_addr,len,__ARQCallbackSync);

	FUNC2(level);
	while(req->state!=ARQ_TASK_FINISHED) {
		FUNC1(__ARQSyncQueue);
	}
	FUNC3(level);
}