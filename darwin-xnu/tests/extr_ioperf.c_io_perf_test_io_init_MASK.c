#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sched_param {int /*<<< orphan*/  sched_priority; } ;

/* Variables and functions */
 int FILE_SIZE ; 
 int /*<<< orphan*/  F_NOCACHE ; 
 int /*<<< orphan*/  IOPOL_IMPORTANT ; 
 int /*<<< orphan*/  IOPOL_SCOPE_PROCESS ; 
 int /*<<< orphan*/  IOPOL_TYPE_DISK ; 
 int IO_SIZE ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  THR_MANAGER_PRI ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  data_buf ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int*,char* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC20(void)
{
    int spawn_ret, pid;
    char *const mount_args[] = {"/usr/local/sbin/mount_nand.sh", NULL};
    spawn_ret = FUNC12(&pid, mount_args[0], NULL, NULL, mount_args, environ);
    if (spawn_ret < 0) {
	FUNC5("NAND mounting in LTE not possible on this device. Skipping test!");
    }
    FUNC18(pid, &spawn_ret, 0);
    if (FUNC7(spawn_ret) && !FUNC6(spawn_ret)) {
        FUNC4("NAND mounted successfully");
    } else {
        FUNC5("Unable to mount NAND. Skipping test!");
    }

    /* Mark the main thread as fixed priority */
    struct sched_param param = {.sched_priority = THR_MANAGER_PRI};
    FUNC3(FUNC14(FUNC13(), SCHED_FIFO, &param),
            "pthread_setschedparam");

    /* Set I/O Policy to Tier 0 */
    FUNC3(FUNC16(IOPOL_TYPE_DISK, IOPOL_SCOPE_PROCESS,
            IOPOL_IMPORTANT), "setiopolicy");

    /* Create data buffer */
    data_buf = FUNC10(IO_SIZE * 16);
    FUNC1(data_buf, "Data buffer allocation");

    int rndfd = FUNC11("/dev/urandom", O_RDONLY, S_IRUSR);
    FUNC2(rndfd, "Open /dev/urandom");
    FUNC0((int)FUNC15(rndfd, data_buf, IO_SIZE * 16), 0, "read /dev/urandom");
    FUNC8(rndfd);

    /* Create test file */
    int fd = FUNC11("/mnt2/test", O_CREAT | O_WRONLY, S_IRUSR);
    FUNC2(fd, 0, "Open /mnt2/test for writing!");

    FUNC3(FUNC9(fd, F_NOCACHE, 1), "fcntl F_NOCACHE enable");
    for (int size = 0; size < FILE_SIZE;) {
        T_QUIET;
        FUNC0((int)FUNC19(fd, data_buf, IO_SIZE * 16), 0, "write test file");
        size += (IO_SIZE * 16);
    }
    FUNC8(fd);
    FUNC17();

}