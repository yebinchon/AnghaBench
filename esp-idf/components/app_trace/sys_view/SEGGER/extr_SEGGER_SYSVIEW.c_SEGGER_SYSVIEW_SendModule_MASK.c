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
typedef  scalar_t__ U8 ;
typedef  scalar_t__ U32 ;
struct TYPE_3__ {scalar_t__ EventOffset; int /*<<< orphan*/  sModule; struct TYPE_3__* pNext; } ;
typedef  TYPE_1__ SEGGER_SYSVIEW_MODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ; 
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ; 
 int SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_MODULEDESC ; 
 scalar_t__* FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* _pFirstModule ; 

void FUNC5(U8 ModuleId) {
  SEGGER_SYSVIEW_MODULE* pModule;
  U32 n;

  if (_pFirstModule != 0) {
    pModule = _pFirstModule;
    for (n = 0; n < ModuleId; n++) {
      pModule = pModule->pNext;
      if (pModule == 0) {
        break;
      }
    }
    if (pModule != 0) {
      U8* pPayload;
      U8* pPayloadStart;
      FUNC2(SEGGER_SYSVIEW_INFO_SIZE + 2 * SEGGER_SYSVIEW_QUANTA_U32 + 1 + SEGGER_SYSVIEW_MAX_STRING_LEN);
      //
      pPayload = pPayloadStart;
      //
      // Send module description
      // Send event offset and number of events
      //
      FUNC0(pPayload, ModuleId);
      FUNC0(pPayload, (pModule->EventOffset));
      pPayload = FUNC3(pPayload, pModule->sModule, SEGGER_SYSVIEW_MAX_STRING_LEN);
      FUNC4(pPayloadStart, pPayload, SYSVIEW_EVTID_MODULEDESC);
      FUNC1();
    }
  }
}