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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ; 
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

void FUNC4(unsigned int EventID, const char* pString) {
  U8* pPayload;
  U8* pPayloadStart;
  FUNC1(SEGGER_SYSVIEW_INFO_SIZE + 1 + SEGGER_SYSVIEW_MAX_STRING_LEN);
  //
  pPayload = FUNC2(pPayloadStart, pString, SEGGER_SYSVIEW_MAX_STRING_LEN);
  FUNC3(pPayloadStart, pPayload, EventID);
  FUNC0();
}