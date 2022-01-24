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
    FUNC4(fd, "put 0 0 5 1\r\n");
    FUNC4(fd, "a\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC4(fd, "stats-job 1\r\n");
    FUNC2(fd, "OK ");
    FUNC2(fd, "\ntime-left: 0\n");
}