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
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_3__ {int /*<<< orphan*/  StackSize; int /*<<< orphan*/  StackBase; int /*<<< orphan*/  TaskID; int /*<<< orphan*/  sName; int /*<<< orphan*/  Prio; } ;
typedef  TYPE_1__ SEGGER_SYSVIEW_TASKINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ; 
 scalar_t__ SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_STACK_INFO ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_TASK_INFO ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(const SEGGER_SYSVIEW_TASKINFO *pInfo) {
  U8* pPayload;
  U8* pPayloadStart;
  FUNC2(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_QUANTA_U32 + 1 + 32);
  //
  pPayload = pPayloadStart;
  FUNC0(pPayload, FUNC3(pInfo->TaskID));
  FUNC0(pPayload, pInfo->Prio);
  pPayload = FUNC4(pPayload, pInfo->sName, 32);
  FUNC5(pPayloadStart, pPayload, SYSVIEW_EVTID_TASK_INFO);
  //
  pPayload = pPayloadStart;
  FUNC0(pPayload, FUNC3(pInfo->TaskID));
  FUNC0(pPayload, pInfo->StackBase);
  FUNC0(pPayload, pInfo->StackSize);
  FUNC0(pPayload, 0); // Stack End, future use
  FUNC5(pPayloadStart, pPayload, SYSVIEW_EVTID_STACK_INFO);
  FUNC1();
}