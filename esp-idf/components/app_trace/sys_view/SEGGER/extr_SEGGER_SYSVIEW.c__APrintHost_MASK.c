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
 int SEGGER_SYSVIEW_MAX_ARGUMENTS ; 
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ; 
 int SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  SYSVIEW_EVTID_PRINT_FORMATTED ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char* s, U32 Options, U32* pArguments, U32 NumArguments) {
  U8* pPayload;
  U8* pPayloadStart;

  FUNC2(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_MAX_STRING_LEN + 2 * SEGGER_SYSVIEW_QUANTA_U32 + SEGGER_SYSVIEW_MAX_ARGUMENTS * SEGGER_SYSVIEW_QUANTA_U32);
  pPayload = FUNC3(pPayloadStart, s, SEGGER_SYSVIEW_MAX_STRING_LEN);
  FUNC0(pPayload, Options);
  FUNC0(pPayload, NumArguments);
  while (NumArguments--) {
    FUNC0(pPayload, (*pArguments++));
  }
  FUNC4(pPayloadStart, pPayload, SYSVIEW_EVTID_PRINT_FORMATTED);
  FUNC1();
}