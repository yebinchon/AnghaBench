#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cursorOffset; int commandSize; int endOffset; int screenOffset; scalar_t__ bufferSize; int /*<<< orphan*/  command; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_COMMAND_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ prompt_size ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

void FUNC6(Command *cmd, const char s[]) {
  FUNC0(cmd->cursorOffset <= cmd->commandSize && cmd->endOffset >= cmd->screenOffset);

  FUNC1(cmd->endOffset + prompt_size, cmd->screenOffset + prompt_size);
  FUNC3(cmd->buffer, 0, MAX_COMMAND_SIZE);
  FUNC3(cmd->command, 0, MAX_COMMAND_SIZE);
  FUNC5(cmd->command, s);
  int size = 0;
  int width = 0;
  FUNC2(s, &size, &width);
  cmd->bufferSize = 0;
  cmd->commandSize = size;
  cmd->cursorOffset = size;
  cmd->screenOffset = width;
  cmd->endOffset = width;
  FUNC4(cmd);
}