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
struct TYPE_2__ {scalar_t__ aof_state; int aof_fd; int aof_selected_db; int aof_child_pid; int aof_rewrite_time_start; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(void) {
    FUNC7(server.aof_state != AOF_OFF);
    FUNC5(1);
    FUNC3(server.aof_fd);
    FUNC4(server.aof_fd);

    server.aof_fd = -1;
    server.aof_selected_db = -1;
    server.aof_state = AOF_OFF;
    /* rewrite operation in progress? kill it, wait child exit */
    if (server.aof_child_pid != -1) {
        int statloc;

        FUNC8(LL_NOTICE,"Killing running AOF rewrite child: %ld",
            (long) server.aof_child_pid);
        if (FUNC6(server.aof_child_pid,SIGUSR1) != -1)
            FUNC9(&statloc,0,NULL);
        /* reset the buffer accumulating changes while the child saves */
        FUNC2();
        FUNC1(server.aof_child_pid);
        server.aof_child_pid = -1;
        server.aof_rewrite_time_start = -1;
        /* close pipes used for IPC between the two processes. */
        FUNC0();
    }
}