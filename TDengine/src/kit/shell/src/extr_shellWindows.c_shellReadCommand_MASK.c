#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {char* buffer; char* command; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_COMMAND_SIZE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(TAOS *con, char command[]) {
  Command cmd;
  FUNC5(&cmd, 0, sizeof(cmd));
  cmd.buffer = (char *)FUNC0(1, MAX_COMMAND_SIZE);
  cmd.command = (char *)FUNC0(1, MAX_COMMAND_SIZE);

  // Read input.
  char c;
  while (1) {
    c = FUNC2();

    switch (c) {
      case '\n':
      case '\r':
        if (FUNC4(&cmd)) {
          FUNC7(command, "%s%s", cmd.buffer, cmd.command);
          FUNC1(cmd.buffer);
          cmd.buffer = NULL;
          FUNC1(cmd.command);
          cmd.command = NULL;
          return;
        } else {
          FUNC6();
          FUNC8(&cmd);
        }
        break;
      default:
        FUNC3(&cmd, c);
    }
  }
}