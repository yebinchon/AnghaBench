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
typedef  int U8 ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_ID_DOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
#define  SEGGER_SYSVIEW_COMMAND_ID_GET_MODULE 135 
#define  SEGGER_SYSVIEW_COMMAND_ID_GET_MODULEDESC 134 
#define  SEGGER_SYSVIEW_COMMAND_ID_GET_NUMMODULES 133 
#define  SEGGER_SYSVIEW_COMMAND_ID_GET_SYSDESC 132 
#define  SEGGER_SYSVIEW_COMMAND_ID_GET_SYSTIME 131 
#define  SEGGER_SYSVIEW_COMMAND_ID_GET_TASKLIST 130 
#define  SEGGER_SYSVIEW_COMMAND_ID_START 129 
#define  SEGGER_SYSVIEW_COMMAND_ID_STOP 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void) {
  U8  Cmd;
  int Status;
  //
  Status = FUNC0(CHANNEL_ID_DOWN, &Cmd, 1);
  if (Status > 0) {
    switch (Cmd) {
    case SEGGER_SYSVIEW_COMMAND_ID_START:
      FUNC7();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_STOP:
      FUNC8();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_SYSTIME:
      FUNC2();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_TASKLIST:
      FUNC6();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_SYSDESC:
      FUNC1();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_NUMMODULES:
      FUNC5();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_MODULEDESC:
      FUNC4();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_MODULE:
      Status = FUNC0(CHANNEL_ID_DOWN, &Cmd, 1);
      if (Status > 0) {
        FUNC3(Cmd);
      }
      break;
    default:
      if (Cmd >= 128) { // Unknown extended command. Dummy read its parameter.
        FUNC0(CHANNEL_ID_DOWN, &Cmd, 1);
      }
      break;
    }
  }
}