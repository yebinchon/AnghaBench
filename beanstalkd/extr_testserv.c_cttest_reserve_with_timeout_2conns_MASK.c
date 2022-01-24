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
 int job_data_size_limit ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int timeout ; 

void
FUNC4()
{
    int fd0, fd1;

    job_data_size_limit = 10;

    int port = FUNC0();
    fd0 = FUNC2(port);
    fd1 = FUNC2(port);
    FUNC3(fd0, "watch foo\r\n");
    FUNC1(fd0, "WATCHING 2\r\n");
    FUNC3(fd0, "reserve-with-timeout 1\r\n");
    FUNC3(fd1, "watch foo\r\n");
    FUNC1(fd1, "WATCHING 2\r\n");
    timeout = 1100000000; // 1.1s
    FUNC1(fd0, "TIMED_OUT\r\n");
}