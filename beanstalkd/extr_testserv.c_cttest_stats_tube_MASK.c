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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void
FUNC5()
{
    int port = FUNC0();
    int fd = FUNC3(port);
    FUNC4(fd, "use tubea\r\n");
    FUNC1(fd, "USING tubea\r\n");
    FUNC4(fd, "put 0 0 0 1\r\n");
    FUNC4(fd, "x\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC4(fd, "delete 1\r\n");
    FUNC1(fd, "DELETED\r\n");

    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nname: tubea\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-urgent: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-ready: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-reserved: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-delayed: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-buried: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ntotal-jobs: 1\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-using: 1\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-watching: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-waiting: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncmd-delete: 1\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncmd-pause-tube: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\npause: 0\n");
    FUNC4(fd, "stats-tube tubea\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\npause-time-left: 0\n");

    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nname: default\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-urgent: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-ready: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-reserved: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-delayed: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-buried: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ntotal-jobs: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-using: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-watching: 1\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-waiting: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncmd-delete: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncmd-pause-tube: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\npause: 0\n");
    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\npause-time-left: 0\n");
}