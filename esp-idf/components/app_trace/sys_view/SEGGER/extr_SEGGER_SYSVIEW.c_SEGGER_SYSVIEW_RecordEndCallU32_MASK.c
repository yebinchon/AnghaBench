#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  unsigned int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ; 
 int SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_END_CALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned int EventID, U32 Para0) {
  U8* pPayload;
  U8* pPayloadStart;
  FUNC2(SEGGER_SYSVIEW_INFO_SIZE + 2 * SEGGER_SYSVIEW_QUANTA_U32);
  //
  pPayload = pPayloadStart;
  FUNC0(pPayload, EventID);
  FUNC0(pPayload, Para0);
  FUNC3(pPayloadStart, pPayload, SYSVIEW_EVTID_END_CALL);
  FUNC1();
}