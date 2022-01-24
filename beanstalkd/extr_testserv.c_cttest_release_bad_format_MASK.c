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

    // bad id
    FUNC3(fd, "release 18446744073709551616 1 1\r\n"); // UINT64_MAX+1
    FUNC1(fd, "BAD_FORMAT\r\n");
    FUNC3(fd, "release 184467440737095516160000000000000000000000000000 1 1\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");
    FUNC3(fd, "release foo111\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");
    FUNC3(fd, "release 111foo\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");

    // bad priority
    FUNC3(fd, "release 18446744073709551615 abc 1\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");

    // bad duration
    FUNC3(fd, "release 18446744073709551615 1 abc\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");
}