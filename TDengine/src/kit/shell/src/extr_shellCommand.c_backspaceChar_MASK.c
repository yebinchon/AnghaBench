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
struct TYPE_4__ {scalar_t__ cursorOffset; scalar_t__ commandSize; scalar_t__ endOffset; scalar_t__ screenOffset; scalar_t__ command; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ prompt_size ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(Command *cmd) {
  FUNC0(cmd->cursorOffset <= cmd->commandSize && cmd->endOffset >= cmd->screenOffset);

  if (cmd->cursorOffset > 0) {
    FUNC1(cmd->endOffset + prompt_size, cmd->screenOffset + prompt_size);
    int size = 0;
    int width = 0;
    FUNC2(cmd->command, cmd->cursorOffset, &size, &width);
    FUNC3(cmd->command + cmd->cursorOffset - size, cmd->command + cmd->cursorOffset,
            cmd->commandSize - cmd->cursorOffset);
    cmd->commandSize -= size;
    cmd->cursorOffset -= size;
    cmd->screenOffset -= width;
    cmd->endOffset -= width;
    FUNC4(cmd);
  }
}