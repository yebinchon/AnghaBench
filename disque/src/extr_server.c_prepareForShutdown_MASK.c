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
struct TYPE_2__ {scalar_t__ aof_state; int aof_child_pid; int /*<<< orphan*/  pidfile; scalar_t__ daemonize; int /*<<< orphan*/  aof_filename; int /*<<< orphan*/  aof_fd; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 scalar_t__ AOF_WAIT_REWRITE ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int SHUTDOWN_REWRITE_AOF ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int flags) {
    int rewrite = flags & SHUTDOWN_REWRITE_AOF;

    FUNC4(LL_WARNING,"User requested shutdown...");
    /* Kill the saving child if there is a background saving in progress.
       We want to avoid race conditions, for instance our saving child may
       overwrite the synchronous saving did by SHUTDOWN. */
    if (server.aof_state != AOF_OFF) {
        /* Kill the AOF saving child as the AOF we already have may be longer
         * but contains the full dataset anyway. */
        if (server.aof_child_pid != -1) {
            /* If we have AOF enabled but haven't written the AOF yet, don't
             * shutdown or else the dataset will be lost. */
            if (server.aof_state == AOF_WAIT_REWRITE) {
                FUNC4(LL_WARNING, "Writing initial AOF, can't exit.");
                return C_ERR;
            }
            FUNC4(LL_WARNING,
                "There is a child rewriting the AOF. Killing it!");
            FUNC2(server.aof_child_pid,SIGUSR1);
        }
        /* Append only file: fsync() the AOF and exit */
        FUNC4(LL_NOTICE,"Calling fsync() on the AOF file.");
        FUNC0(server.aof_fd);
    }

    /* Perform a synchronous AOF rewrite if requested. */
    if (rewrite) {
        if (FUNC3(server.aof_filename,0) == C_ERR)
            return C_ERR;
    }

    if (server.daemonize) {
        FUNC4(LL_NOTICE,"Removing the pid file.");
        FUNC5(server.pidfile);
    }

    /* Close the listening sockets. Apparently this allows faster restarts. */
    FUNC1(1);
    FUNC4(LL_WARNING,"Disque is now ready to exit, bye bye...");
    return C_OK;
}