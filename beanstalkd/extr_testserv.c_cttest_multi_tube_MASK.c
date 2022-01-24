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
    FUNC3(fd, "use abc\r\n");
    FUNC1(fd, "USING abc\r\n");
    FUNC3(fd, "put 999999 0 0 0\r\n");
    FUNC3(fd, "\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC3(fd, "use def\r\n");
    FUNC1(fd, "USING def\r\n");
    FUNC3(fd, "put 99 0 0 0\r\n");
    FUNC3(fd, "\r\n");
    FUNC1(fd, "INSERTED 2\r\n");
    FUNC3(fd, "watch abc\r\n");
    FUNC1(fd, "WATCHING 2\r\n");
    FUNC3(fd, "watch def\r\n");
    FUNC1(fd, "WATCHING 3\r\n");
    FUNC3(fd, "reserve\r\n");
    FUNC1(fd, "RESERVED 2 0\r\n");
}