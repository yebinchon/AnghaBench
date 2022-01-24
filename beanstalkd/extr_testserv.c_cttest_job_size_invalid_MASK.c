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
 int /*<<< orphan*/  JOB_DATA_SIZE_LIMIT_MAX ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  job_data_size_limit ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void
FUNC4()
{
    job_data_size_limit = JOB_DATA_SIZE_LIMIT_MAX;
    int port = FUNC0();
    int fd = FUNC2(port);
    FUNC3(fd, "put 0 0 0 4294967296\r\n");
    FUNC3(fd, "put 0 0 0 10b\r\n");
    FUNC3(fd, "put 0 0 0 --!@#$%^&&**()0b\r\n");
    FUNC3(fd, "put 0 0 0 1\r\n");
    FUNC3(fd, "x\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");
    FUNC1(fd, "BAD_FORMAT\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
}