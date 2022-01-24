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
struct TYPE_3__ {scalar_t__ cursorOffset; scalar_t__ commandSize; scalar_t__ endOffset; scalar_t__ screenOffset; scalar_t__ command; char* buffer; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 scalar_t__ MAX_COMMAND_SIZE ; 
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,scalar_t__) ; 

int FUNC6(Command *cmd) {
  FUNC0(cmd->cursorOffset <= cmd->commandSize && cmd->endOffset >= cmd->screenOffset);

  char *total = (char *)FUNC1(1, MAX_COMMAND_SIZE);
  FUNC3(cmd->command + cmd->commandSize, 0, MAX_COMMAND_SIZE - cmd->commandSize);
  FUNC5(total, "%s%s", cmd->buffer, cmd->command);

  char *reg_str =
    "(^.*;\\s*$)|(^\\s*$)|(^\\s*exit\\s*$)|(^\\s*q\\s*$)|(^\\s*quit\\s*$)|(^"
    "\\s*clear\\s*$)";
  if (FUNC4(total, reg_str, REG_EXTENDED | REG_ICASE)) {
    FUNC2(total);
    return 1;
  }

  FUNC2(total);
  return 0;
}