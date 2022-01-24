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
struct TYPE_2__ {int aof_fd; scalar_t__ aof_state; int /*<<< orphan*/  aof_filename; int /*<<< orphan*/  unixtime; int /*<<< orphan*/  aof_last_fsync; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 scalar_t__ AOF_WAIT_REWRITE ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 () ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void) {
    server.aof_last_fsync = server.unixtime;
    server.aof_fd = FUNC1(server.aof_filename,O_WRONLY|O_APPEND|O_CREAT,0644);
    FUNC3(server.aof_state == AOF_OFF);
    if (server.aof_fd == -1) {
        FUNC4(LL_WARNING,"Disque needs to enable the AOF but can't open the append only file: %s",FUNC5(errno));
        return C_ERR;
    }
    if (FUNC2() == C_ERR) {
        FUNC0(server.aof_fd);
        FUNC4(LL_WARNING,"Disque needs to enable the AOF but can't trigger a background AOF rewrite operation. Check the above logs for more info about the error.");
        return C_ERR;
    }
    /* We correctly switched on AOF, now wait for the rewrite to be complete
     * in order to append data on disk. */
    server.aof_state = AOF_WAIT_REWRITE;
    return C_OK;
}