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
typedef  int /*<<< orphan*/  flag_buf ;
struct TYPE_4__ {int index; int /*<<< orphan*/ * arg; int /*<<< orphan*/ * command; int /*<<< orphan*/ * target; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  COMMAND_DELIMS ; 
 int /*<<< orphan*/  COMMAND_FLAG_ENTER ; 
 int /*<<< orphan*/  COMMAND_FLAG_LEAVE ; 
 int /*<<< orphan*/  EINVAL ; 
 char* SPACES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 void* FUNC2 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(Command *cmd, int cmd_count, int interval_count,
                         const char **buf, void *log_ctx)
{
    int ret;

    FUNC5(cmd, 0, sizeof(Command));
    cmd->index = cmd_count;

    /* format: [FLAGS] target command arg */
    *buf += FUNC9(*buf, SPACES);

    /* parse flags */
    if (**buf == '[') {
        (*buf)++; /* skip "[" */

        while (**buf) {
            int len = FUNC6(*buf, "|+]");

            if      (!FUNC8(*buf, "enter", FUNC7("enter"))) cmd->flags |= COMMAND_FLAG_ENTER;
            else if (!FUNC8(*buf, "leave", FUNC7("leave"))) cmd->flags |= COMMAND_FLAG_LEAVE;
            else {
                char flag_buf[64];
                FUNC4(flag_buf, *buf, sizeof(flag_buf));
                FUNC3(log_ctx, AV_LOG_ERROR,
                       "Unknown flag '%s' in interval #%d, command #%d\n",
                       flag_buf, interval_count, cmd_count);
                return FUNC0(EINVAL);
            }
            *buf += len;
            if (**buf == ']')
                break;
            if (!FUNC9(*buf, "+|")) {
                FUNC3(log_ctx, AV_LOG_ERROR,
                       "Invalid flags char '%c' in interval #%d, command #%d\n",
                       **buf, interval_count, cmd_count);
                return FUNC0(EINVAL);
            }
            if (**buf)
                (*buf)++;
        }

        if (**buf != ']') {
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Missing flag terminator or extraneous data found at the end of flags "
                   "in interval #%d, command #%d\n", interval_count, cmd_count);
            return FUNC0(EINVAL);
        }
        (*buf)++; /* skip "]" */
    } else {
        cmd->flags = COMMAND_FLAG_ENTER;
    }

    *buf += FUNC9(*buf, SPACES);
    cmd->target = FUNC2(buf, COMMAND_DELIMS);
    if (!cmd->target || !cmd->target[0]) {
        FUNC3(log_ctx, AV_LOG_ERROR,
               "No target specified in interval #%d, command #%d\n",
               interval_count, cmd_count);
        ret = FUNC0(EINVAL);
        goto fail;
    }

    *buf += FUNC9(*buf, SPACES);
    cmd->command = FUNC2(buf, COMMAND_DELIMS);
    if (!cmd->command || !cmd->command[0]) {
        FUNC3(log_ctx, AV_LOG_ERROR,
               "No command specified in interval #%d, command #%d\n",
               interval_count, cmd_count);
        ret = FUNC0(EINVAL);
        goto fail;
    }

    *buf += FUNC9(*buf, SPACES);
    cmd->arg = FUNC2(buf, COMMAND_DELIMS);

    return 1;

fail:
    FUNC1(&cmd->target);
    FUNC1(&cmd->command);
    FUNC1(&cmd->arg);
    return ret;
}