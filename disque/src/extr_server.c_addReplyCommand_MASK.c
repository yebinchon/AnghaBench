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
struct serverCommand {int /*<<< orphan*/  keystep; int /*<<< orphan*/  lastkey; int /*<<< orphan*/  firstkey; int /*<<< orphan*/  arity; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {int /*<<< orphan*/  nullbulk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ADMIN ; 
 int /*<<< orphan*/  CMD_DENYOOM ; 
 int /*<<< orphan*/  CMD_FAST ; 
 int /*<<< orphan*/  CMD_LOADING ; 
 int /*<<< orphan*/  CMD_RANDOM ; 
 int /*<<< orphan*/  CMD_READONLY ; 
 int /*<<< orphan*/  CMD_SKIP_MONITOR ; 
 int /*<<< orphan*/  CMD_WRITE ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct serverCommand*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 TYPE_1__ shared ; 

void FUNC7(client *c, struct serverCommand *cmd) {
    if (!cmd) {
        FUNC1(c, shared.nullbulk);
    } else {
        /* We are adding: command name, arg count, flags, first, last, offset */
        FUNC5(c, 6);
        FUNC2(c, cmd->name);
        FUNC4(c, cmd->arity);

        int flagcount = 0;
        void *flaglen = FUNC0(c);
        flagcount += FUNC3(c,cmd,CMD_WRITE, "write");
        flagcount += FUNC3(c,cmd,CMD_READONLY, "readonly");
        flagcount += FUNC3(c,cmd,CMD_DENYOOM, "denyoom");
        flagcount += FUNC3(c,cmd,CMD_ADMIN, "admin");
        flagcount += FUNC3(c,cmd,CMD_RANDOM, "random");
        flagcount += FUNC3(c,cmd,CMD_LOADING, "loading");
        flagcount += FUNC3(c,cmd,CMD_SKIP_MONITOR, "skip_monitor");
        flagcount += FUNC3(c,cmd,CMD_FAST, "fast");
        FUNC6(c, flaglen, flagcount);

        FUNC4(c, cmd->firstkey);
        FUNC4(c, cmd->lastkey);
        FUNC4(c, cmd->keystep);
    }
}