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
 scalar_t__ SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_ISR_ENTER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(U32 IrqId) {
  unsigned v;
  U8* pPayload;
  U8* pPayloadStart;
  FUNC2(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_QUANTA_U32);
  //
  pPayload = pPayloadStart;
  v = IrqId;//SEGGER_SYSVIEW_GET_INTERRUPT_ID();
  FUNC0(pPayload, v);
  FUNC3(pPayloadStart, pPayload, SYSVIEW_EVTID_ISR_ENTER);
  FUNC1();
}