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
struct TYPE_3__ {int use; int wantsync; scalar_t__ syncrate; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 TYPE_2__ srv ; 

void
FUNC6()
{
    srv.wal.dir = FUNC2();
    srv.wal.use = 1;
    srv.wal.syncrate = 0;
    srv.wal.wantsync = 1;

    int port = FUNC0();
    int fd = FUNC4(port);
    FUNC5(fd, "use test\r\n");
    FUNC1(fd, "USING test\r\n");
    FUNC5(fd, "put 0 0 120 4\r\n");
    FUNC5(fd, "test\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC5(fd, "put 0 0 120 4\r\n");
    FUNC5(fd, "tes1\r\n");
    FUNC1(fd, "INSERTED 2\r\n");
    FUNC5(fd, "watch test\r\n");
    FUNC1(fd, "WATCHING 2\r\n");
    FUNC5(fd, "reserve\r\n");
    FUNC1(fd, "RESERVED 1 4\r\n");
    FUNC1(fd, "test\r\n");
    FUNC5(fd, "release 1 1 1\r\n");
    FUNC1(fd, "RELEASED\r\n");
    FUNC5(fd, "reserve\r\n");
    FUNC1(fd, "RESERVED 2 4\r\n");
    FUNC1(fd, "tes1\r\n");
    FUNC5(fd, "delete 2\r\n");
    FUNC1(fd, "DELETED\r\n");

    FUNC3();

    port = FUNC0();
    fd = FUNC4(port);
    FUNC5(fd, "watch test\r\n");
    FUNC1(fd, "WATCHING 2\r\n");
    FUNC5(fd, "reserve\r\n");
    FUNC1(fd, "RESERVED 1 4\r\n");
    FUNC1(fd, "test\r\n");
    FUNC5(fd, "delete 1\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC5(fd, "delete 2\r\n");
    FUNC1(fd, "NOT_FOUND\r\n");
}