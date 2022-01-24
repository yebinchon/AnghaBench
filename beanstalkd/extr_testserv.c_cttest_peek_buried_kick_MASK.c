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
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void
FUNC4()
{
    int port = FUNC0();
    int fd = FUNC2(port);
    FUNC3(fd, "put 0 0 1 1\r\n");
    FUNC3(fd, "A\r\n");
    FUNC1(fd, "INSERTED 1\r\n");

    // cannot bury unreserved job
    FUNC3(fd, "bury 1 0\r\n");
    FUNC1(fd, "NOT_FOUND\r\n");
    FUNC3(fd, "peek-buried\r\n");
    FUNC1(fd, "NOT_FOUND\r\n");

    FUNC3(fd, "reserve-with-timeout 0\r\n");
    FUNC1(fd, "RESERVED 1 1\r\n");
    FUNC1(fd, "A\r\n");

    // now we can bury
    FUNC3(fd, "bury 1 0\r\n");
    FUNC1(fd, "BURIED\r\n");
    FUNC3(fd, "peek-buried\r\n");
    FUNC1(fd, "FOUND 1 1\r\n");
    FUNC1(fd, "A\r\n");

    // kick and verify the job is ready
    FUNC3(fd, "kick 1\r\n");
    FUNC1(fd, "KICKED 1\r\n");
    FUNC3(fd, "peek-buried\r\n");
    FUNC1(fd, "NOT_FOUND\r\n");
    FUNC3(fd, "peek-ready\r\n");
    FUNC1(fd, "FOUND 1 1\r\n");
    FUNC1(fd, "A\r\n");

    // nothing is left to kick
    FUNC3(fd, "kick 1\r\n");
    FUNC1(fd, "KICKED 0\r\n");
}