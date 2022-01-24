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
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ; 
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ; 
 scalar_t__ SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_NAME_RESOURCE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(U32 ResourceId, const char* sName) {
  U8* pPayload;
  U8* pPayloadStart;
  FUNC2(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_QUANTA_U32 + 1 + SEGGER_SYSVIEW_MAX_STRING_LEN);
  //
  pPayload = pPayloadStart;
  FUNC0(pPayload, FUNC3(ResourceId));
  pPayload = FUNC4(pPayload, sName, SEGGER_SYSVIEW_MAX_STRING_LEN);
  FUNC5(pPayloadStart, pPayload, SYSVIEW_EVTID_NAME_RESOURCE);
  FUNC1();
}