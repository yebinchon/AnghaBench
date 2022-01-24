#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int killed; } ;
struct TYPE_6__ {void* ahandle; void* thandle; int /*<<< orphan*/ * msg; int /*<<< orphan*/  fp; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SSchedMsg ;
typedef  TYPE_2__ SQInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  queryQhandle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  vnodeFreeQInfoInQueueImpl ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(void *param) {
  SQInfo *pQInfo = (SQInfo *)param;

  if (!FUNC2(pQInfo)) return;

  pQInfo->killed = 1;

  FUNC0("QInfo:%p set kill flag and add to queue, stop query ASAP", pQInfo);
  SSchedMsg schedMsg = {0};
  schedMsg.fp = vnodeFreeQInfoInQueueImpl;

  schedMsg.msg = NULL;
  schedMsg.thandle = (void *)1;
  schedMsg.ahandle = param;
  FUNC1(queryQhandle, &schedMsg);
}