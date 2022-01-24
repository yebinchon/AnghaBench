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
struct TYPE_3__ {char* buffer; char* command; scalar_t__ cursorOffset; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_COMMAND_SIZE ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void FUNC3(Command *cmd) {
  if (FUNC1(cmd->buffer, "(\\s+$)|(^$)", REG_EXTENDED)) FUNC2(cmd->command, " ");
  FUNC2(cmd->buffer, cmd->command);

  FUNC0(cmd->command, 0, MAX_COMMAND_SIZE);
  cmd->cursorOffset = 0;
}