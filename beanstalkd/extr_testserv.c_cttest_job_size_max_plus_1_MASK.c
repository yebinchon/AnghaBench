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
 int JOB_DATA_SIZE_LIMIT_MAX ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int job_data_size_limit ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int const) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void
FUNC5()
{
    /* verify that server reject the job larger than maximum allowed. */
    job_data_size_limit = JOB_DATA_SIZE_LIMIT_MAX;
    int port = FUNC0();
    int fd = FUNC3(port);
    FUNC4(fd, "put 0 0 0 1073741825\r\n");

    const int len = 1024*1024;
    char body[len+1];
    FUNC2(body, 'a', len);
    body[len] = 0;

    int i;
    for (i=0; i<JOB_DATA_SIZE_LIMIT_MAX; i+=len) {
        FUNC4(fd, body);
    }
    FUNC4(fd, "x");
    FUNC4(fd, "\r\n");
    FUNC1(fd, "JOB_TOO_BIG\r\n");
}