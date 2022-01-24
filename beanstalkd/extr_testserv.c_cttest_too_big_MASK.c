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

void
FUNC4()
{
    job_data_size_limit = 10;
    int port = FUNC0();
    int fd = FUNC2(port);
    FUNC3(fd, "put 0 0 0 11\r\n");
    FUNC3(fd, "delete 9999\r\n");
    FUNC3(fd, "put 0 0 0 1\r\n");
    FUNC3(fd, "x\r\n");
    FUNC1(fd, "JOB_TOO_BIG\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
}