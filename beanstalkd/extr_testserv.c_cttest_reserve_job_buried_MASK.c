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

    // put, reserve and bury
    FUNC4(fd, "put 0 0 1 1\r\n");
    FUNC4(fd, "A\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC4(fd, "reserve-job 1\r\n");
    FUNC1(fd, "RESERVED 1 1\r\n");
    FUNC1(fd, "A\r\n");
    FUNC4(fd, "bury 1 1\r\n");
    FUNC1(fd, "BURIED\r\n");

    // put, reserve and bury
    FUNC4(fd, "put 0 0 1 1\r\n");
    FUNC4(fd, "B\r\n");
    FUNC1(fd, "INSERTED 2\r\n");
    FUNC4(fd, "reserve-job 2\r\n");
    FUNC1(fd, "RESERVED 2 1\r\n");
    FUNC1(fd, "B\r\n");
    FUNC4(fd, "bury 2 1\r\n");
    FUNC1(fd, "BURIED\r\n");

    // reserve by ids
    FUNC4(fd, "reserve-job 2\r\n");
    FUNC1(fd, "RESERVED 2 1\r\n");
    FUNC1(fd, "B\r\n");
    FUNC4(fd, "reserve-job 1\r\n");
    FUNC1(fd, "RESERVED 1 1\r\n");
    FUNC1(fd, "A\r\n");

    // release back and check if jobs are ready.
    FUNC4(fd, "release 1 1 0\r\n");
    FUNC1(fd, "RELEASED\r\n");
    FUNC4(fd, "release 2 1 0\r\n");
    FUNC1(fd, "RELEASED\r\n");
    FUNC4(fd, "stats-job 1\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nstate: ready\n");
    FUNC4(fd, "stats-job 2\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nstate: ready\n");

}