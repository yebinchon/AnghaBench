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
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6()
{
    int port = FUNC0();
    int fd = FUNC3(port);
    FUNC4(fd, "put 0 1 1 0\r\n");
    FUNC4(fd, "\r\n");
    FUNC1(fd, "INSERTED 1\r\n");

    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-ready: 0\n");

    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-delayed: 1\n");

    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ntotal-jobs: 1\n");

    FUNC5(1010000); // 1.01 sec

    // check that after 1 sec the delayed job is ready again

    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-ready: 1\n");

    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ncurrent-jobs-delayed: 0\n");

    FUNC4(fd, "stats-tube default\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ntotal-jobs: 1\n");
}