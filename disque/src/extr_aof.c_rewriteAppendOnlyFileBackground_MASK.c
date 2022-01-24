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
typedef  int pid_t ;
struct TYPE_2__ {int aof_child_pid; long long stat_fork_time; double stat_fork_rate; int aof_selected_db; int /*<<< orphan*/  aof_rewrite_time_start; scalar_t__ aof_rewrite_scheduled; } ;

/* Variables and functions */
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 long long FUNC13 () ; 
 size_t FUNC14 () ; 
 scalar_t__ FUNC15 () ; 

int FUNC16(void) {
    pid_t childpid;
    long long start;

    if (server.aof_child_pid != -1) return C_ERR;
    if (FUNC0() != C_OK) return C_ERR;
    start = FUNC13();
    if ((childpid = FUNC3()) == 0) {
        char tmpfile[256];

        /* Child */
        FUNC1(0);
        FUNC8("disque-aof-rewrite");
        FUNC9(tmpfile,256,"temp-rewriteaof-bg-%d.aof", (int) FUNC4());
        if (FUNC6(tmpfile,1) == C_OK) {
            size_t private_dirty = FUNC14();

            if (private_dirty) {
                FUNC7(LL_NOTICE,
                    "AOF rewrite: %zu MB of memory used by copy-on-write",
                    private_dirty/(1024*1024));
            }
            FUNC2(0);
        } else {
            FUNC2(1);
        }
    } else {
        /* Parent */
        server.stat_fork_time = FUNC13()-start;
        server.stat_fork_rate = (double) FUNC15() * 1000000 / server.stat_fork_time / (1024*1024*1024); /* GB per second. */
        FUNC5("fork",server.stat_fork_time/1000);
        if (childpid == -1) {
            FUNC7(LL_WARNING,
                "Can't rewrite append only file in background: fork: %s",
                FUNC10(errno));
            return C_ERR;
        }
        FUNC7(LL_NOTICE,
            "Background append only file rewriting started by pid %d",childpid);
        server.aof_rewrite_scheduled = 0;
        server.aof_rewrite_time_start = FUNC11(NULL);
        server.aof_child_pid = childpid;
        FUNC12();
        /* We set appendseldb to -1 in order to force the next call to the
         * feedAppendOnlyFile() to issue a SELECT command, so the differences
         * accumulated by the parent into server.aof_rewrite_buf will start
         * with a SELECT statement and it will be safe to merge. */
        server.aof_selected_db = -1;
        return C_OK;
    }
    return C_OK; /* unreached */
}