#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_2__ {int EnableState; int /*<<< orphan*/  (* pfSendSysDesc ) () ;int /*<<< orphan*/  RAMBaseAddress; int /*<<< orphan*/  CPUFreq; int /*<<< orphan*/  SysFreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_ID_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SEGGER_SYSVIEW_ID_SHIFT ; 
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_INIT ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_TRACE_START ; 
 TYPE_1__ _SYSVIEW_Globals ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  _abSync ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(void) {
  if (_SYSVIEW_Globals.EnableState == 0) {
    _SYSVIEW_Globals.EnableState = 1;
#if (SEGGER_SYSVIEW_POST_MORTEM_MODE == 1)
    _SendSyncInfo();
#else
    FUNC4();
    FUNC3(CHANNEL_ID_UP, _abSync, 10);
    FUNC9();
    FUNC6(SYSVIEW_EVTID_TRACE_START);
    {
      U8* pPayload;
      U8* pPayloadStart;
      FUNC2(SEGGER_SYSVIEW_INFO_SIZE + 4 * SEGGER_SYSVIEW_QUANTA_U32);
      //
      pPayload = pPayloadStart;
      FUNC0(pPayload, _SYSVIEW_Globals.SysFreq);
      FUNC0(pPayload, _SYSVIEW_Globals.CPUFreq);
      FUNC0(pPayload, _SYSVIEW_Globals.RAMBaseAddress);
      FUNC0(pPayload, SEGGER_SYSVIEW_ID_SHIFT);
      FUNC10(pPayloadStart, pPayload, SYSVIEW_EVTID_INIT);
      FUNC1();
    }
    if (_SYSVIEW_Globals.pfSendSysDesc) {
      _SYSVIEW_Globals.pfSendSysDesc();
    }
    FUNC5();
    FUNC8();
    FUNC7();
#endif
  }
}