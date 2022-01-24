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
    int i;
    for (i = 0; i < 10; i++)
        FUNC3(fd, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"); // 50 bytes
    FUNC3(fd, "\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");
    // Issue another command and check that reponse is not "UNKNOWN_COMMAND"
    // as described in issue #337
    FUNC3(fd, "put 0 0 1 1\r\n");
    FUNC3(fd, "A\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
}