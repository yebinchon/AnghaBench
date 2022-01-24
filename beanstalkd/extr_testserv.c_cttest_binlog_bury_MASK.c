#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int use; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int job_data_size_limit ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 TYPE_2__ srv ; 

void
FUNC5()
{
    srv.wal.dir = FUNC2();
    srv.wal.use = 1;
    job_data_size_limit = 10;

    int port = FUNC0();
    int fd = FUNC3(port);
    FUNC4(fd, "put 0 0 100 0\r\n");
    FUNC4(fd, "\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC4(fd, "reserve\r\n");
    FUNC1(fd, "RESERVED 1 0\r\n");
    FUNC1(fd, "\r\n");
    FUNC4(fd, "bury 1 0\r\n");
    FUNC1(fd, "BURIED\r\n");
}