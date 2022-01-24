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
struct TYPE_3__ {char* buffer; int /*<<< orphan*/  command; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int MAX_COMMAND_SIZE ; 
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 

int FUNC3(Command *cmd) {
  char total[MAX_COMMAND_SIZE];
  FUNC0(total, 0, MAX_COMMAND_SIZE);
  FUNC2(total, "%s%s", cmd->buffer, cmd->command);

  char *reg_str =
      "(^.*;\\s*$)|(^\\s*$)|(^\\s*exit\\s*$)|(^\\s*q\\s*$)|(^\\s*quit\\s*$)|(^"
      "\\s*clear\\s*$)";
  if (FUNC1(total, reg_str, REG_EXTENDED | REG_ICASE)) return 1;

  return 0;
}