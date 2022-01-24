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
    FUNC4(fd, "put 0 0 120 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC4(fd, "put 0 0 4294 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 2\r\n");
    FUNC4(fd, "put 0 0 4295 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 3\r\n");
    FUNC4(fd, "put 0 0 4296 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 4\r\n");
    FUNC4(fd, "put 0 0 4297 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 5\r\n");
    FUNC4(fd, "put 0 0 5000 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 6\r\n");
    FUNC4(fd, "put 0 0 21600 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 7\r\n");
    FUNC4(fd, "stats-job 1\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nttr: 120\n");
    FUNC4(fd, "stats-job 2\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nttr: 4294\n");
    FUNC4(fd, "stats-job 3\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nttr: 4295\n");
    FUNC4(fd, "stats-job 4\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nttr: 4296\n");
    FUNC4(fd, "stats-job 5\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nttr: 4297\n");
    FUNC4(fd, "stats-job 6\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nttr: 5000\n");
    FUNC4(fd, "stats-job 7\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\nttr: 21600\n");
}