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
    FUNC3(fd, "put 0 0 1 1\r\n");
    FUNC3(fd, "B\r\n");
    FUNC1(fd, "INSERTED 2\r\n");

    FUNC3(fd, "reserve-job 2\r\n");
    FUNC1(fd, "RESERVED 2 1\r\n");
    FUNC1(fd, "B\r\n");

    // Non-existing job.
    FUNC3(fd, "reserve-job 3\r\n");
    FUNC1(fd, "NOT_FOUND\r\n");

    // id=1 was not reserved.
    FUNC3(fd, "release 1 1 0\r\n");
    FUNC1(fd, "NOT_FOUND\r\n");

    FUNC3(fd, "release 2 1 0\r\n");
    FUNC1(fd, "RELEASED\r\n");
}