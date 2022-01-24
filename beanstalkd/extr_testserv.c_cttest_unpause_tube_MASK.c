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
    int fd0, fd1;

    int port = FUNC0();
    fd0 = FUNC2(port);
    fd1 = FUNC2(port);

    FUNC3(fd0, "put 0 0 0 0\r\n");
    FUNC3(fd0, "\r\n");
    FUNC1(fd0, "INSERTED 1\r\n");

    FUNC3(fd0, "pause-tube default 86400\r\n");
    FUNC1(fd0, "PAUSED\r\n");

    FUNC3(fd1, "reserve\r\n");

    FUNC3(fd0, "pause-tube default 0\r\n");
    FUNC1(fd0, "PAUSED\r\n");

    // ckresp will time out if this takes too long, so the
    // test will not pass.
    FUNC1(fd1, "RESERVED 1 0\r\n");
    FUNC1(fd1, "\r\n");
}