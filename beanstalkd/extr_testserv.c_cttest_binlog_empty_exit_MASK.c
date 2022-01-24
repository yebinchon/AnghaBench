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
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 TYPE_2__ srv ; 

void
FUNC6()
{
    srv.wal.dir = FUNC2();
    srv.wal.use = 1;
    job_data_size_limit = 10;

    int port = FUNC0();
    FUNC3();

    port = FUNC0();
    int fd = FUNC4(port);
    FUNC5(fd, "put 0 0 0 0\r\n");
    FUNC5(fd, "\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
}