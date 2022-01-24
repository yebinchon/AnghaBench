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
struct TYPE_3__ {void* arg; int /*<<< orphan*/ * command; int /*<<< orphan*/ * target; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SPACES ; 
 void* FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC3(Command *cmd, const char *command_str, void *log_ctx)
{
    const char **buf = &command_str;

    cmd->target = FUNC1(buf, SPACES);
    if (!cmd->target || !cmd->target[0]) {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "No target specified in command '%s'\n", command_str);
        return FUNC0(EINVAL);
    }

    cmd->command = FUNC1(buf, SPACES);
    if (!cmd->command || !cmd->command[0]) {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "No command specified in command '%s'\n", command_str);
        return FUNC0(EINVAL);
    }

    cmd->arg = FUNC1(buf, SPACES);
    return 0;
}