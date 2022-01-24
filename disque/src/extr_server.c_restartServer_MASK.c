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
typedef  int mstime_t ;
struct TYPE_2__ {int /*<<< orphan*/  exec_argv; int /*<<< orphan*/  executable; scalar_t__ maxclients; scalar_t__ configfile; } ;

/* Variables and functions */
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int RESTART_SERVER_CONFIG_REWRITE ; 
 int RESTART_SERVER_GRACEFULLY ; 
 int /*<<< orphan*/  SHUTDOWN_NOFLAGS ; 
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(int flags, mstime_t delay) {
    int j;

    /* Check if we still have accesses to the executable that started this
     * server instance. */
    if (FUNC1(server.executable,X_OK) == -1) return C_ERR;

    /* Config rewriting. */
    if (flags & RESTART_SERVER_CONFIG_REWRITE &&
        server.configfile &&
        FUNC5(server.configfile) == -1) return C_ERR;

    /* Perform a proper shutdown. */
    if (flags & RESTART_SERVER_GRACEFULLY &&
        FUNC4(SHUTDOWN_NOFLAGS) != C_OK) return C_ERR;

    /* Close all file descriptors, with the exception of stdin, stdout, strerr
     * which are useful if we restart a Redis server which is not daemonized. */
    for (j = 3; j < (int)server.maxclients + 1024; j++) FUNC2(j);

    /* Execute the server with the original command line. */
    if (delay) FUNC6(delay*1000);
    FUNC3(server.executable,server.exec_argv,environ);

    /* If an error occurred here, there is nothing we can do, but exit. */
    FUNC0(1);

    return C_ERR; /* Never reached. */
}