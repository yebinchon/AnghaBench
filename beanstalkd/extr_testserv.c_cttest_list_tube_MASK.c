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
    int fd0 = FUNC3(port);

    FUNC4(fd0, "watch w\r\n");
    FUNC1(fd0, "WATCHING 2\r\n");

    FUNC4(fd0, "use u\r\n");
    FUNC1(fd0, "USING u\r\n");

    FUNC4(fd0, "list-tubes\r\n");
    FUNC2(fd0, "OK ");
    FUNC1(fd0,
           "---\n"
           "- default\n"
           "- w\n"
           "- u\n\r\n");

    FUNC4(fd0, "list-tube-used\r\n");
    FUNC1(fd0, "USING u\r\n");

    FUNC4(fd0, "list-tubes-watched\r\n");
    FUNC2(fd0, "OK ");
    FUNC1(fd0,
           "---\n"
           "- default\n"
           "- w\n\r\n");

    FUNC4(fd0, "ignore default\r\n");
    FUNC1(fd0, "WATCHING 1\r\n");

    FUNC4(fd0, "list-tubes-watched\r\n");
    FUNC2(fd0, "OK ");
    FUNC1(fd0,
           "---\n"
           "- w\n\r\n");

    FUNC4(fd0, "ignore w\r\n");
    FUNC1(fd0, "NOT_IGNORED\r\n");
}