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

    FUNC4(fd, "put 0 5 1 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 1\r\n");

    FUNC4(fd, "stats-job 1\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nstate: delayed\n");

    FUNC4(fd, "reserve-job 1\r\n");
    FUNC1(fd, "RESERVED 1 1\r\n");
    FUNC1(fd, "a\r\n");

    // After 0.1s the job should be still reserved.
    FUNC5(100000);
    FUNC4(fd, "stats-job 1\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nstate: reserved\n");

    // Reservation made with reserve-job should behave the same way as other
    // reserve commands, e.g. produce "deadline soon" message, and get released
    // when ttr ends.
    FUNC4(fd, "reserve-with-timeout 1\r\n");
    FUNC1(fd, "DEADLINE_SOON\r\n");

    // Job should be reserved; last "reserve" took less than 1s.
    FUNC4(fd, "stats-job 1\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nstate: reserved\n");

    // We are not able to process the job in time. Check that it gets released.
    // The job was in delayed state. It becomes ready when it gets auto-released.
    FUNC5(1000000); // 1.0s
    // put a dummy job
    FUNC4(fd, "put 0 0 1 1\r\n");
    FUNC4(fd, "B\r\n");
    FUNC1(fd, "INSERTED 2\r\n");
    // check that ID=1 gets released
    FUNC4(fd, "stats-job 1\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nstate: ready\n");
}