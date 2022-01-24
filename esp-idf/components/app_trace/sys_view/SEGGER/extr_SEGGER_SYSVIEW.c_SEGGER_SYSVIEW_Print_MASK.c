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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ; 
 int /*<<< orphan*/  SEGGER_SYSVIEW_LOG ; 
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ; 
 int SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_PRINT_FORMATTED ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(const char* s) {
  U8* pPayload;
  U8* pPayloadStart;
  FUNC2(SEGGER_SYSVIEW_INFO_SIZE + 2 * SEGGER_SYSVIEW_QUANTA_U32 + SEGGER_SYSVIEW_MAX_STRING_LEN + 3/*1 or 3 bytes for string length*/);
  //
  pPayload = FUNC3(pPayloadStart, s, SEGGER_SYSVIEW_MAX_STRING_LEN);
  FUNC0(pPayload, SEGGER_SYSVIEW_LOG);
  FUNC0(pPayload, 0);
  FUNC4(pPayloadStart, pPayload, SYSVIEW_EVTID_PRINT_FORMATTED);
  FUNC1();
}