#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int GDBSTUB_ST_ERR ; 
 int GDBSTUB_ST_OK ; 
 scalar_t__ GDBSTUB_TASK_SUPPORT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int FUNC3 (unsigned char*,int) ; 
 TYPE_1__ s_scratch ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(unsigned char *cmd, int len)
{
    unsigned char *data = cmd + 1;
    if (cmd[0] == 'g') 
    {
        FUNC1(data, len - 1);
    } else if (cmd[0] == 'G') {
        /* receive content for all registers from gdb */
        FUNC0(data, len - 1);
    } else if (cmd[0] == 'm') {
        /* read memory to gdb */
        FUNC2(data, len - 1);
    } else if (cmd[0] == '?') {
        /* Reply with stop reason */
        FUNC4();
#if CONFIG_ESP_GDBSTUB_SUPPORT_TASKS
    } else if (s_scratch.state != GDBSTUB_TASK_SUPPORT_DISABLED) {
        return handle_task_commands(cmd, len);
#endif // CONFIG_ESP_GDBSTUB_SUPPORT_TASKS
    } else {
        /* Unrecognized command */
        return GDBSTUB_ST_ERR;
    }
    return GDBSTUB_ST_OK;
}