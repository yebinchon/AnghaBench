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
struct TYPE_3__ {int use; int filesize; int wantsync; scalar_t__ syncrate; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * falloc ; 
 int* fallocpat ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int size ; 
 TYPE_2__ srv ; 
 int /*<<< orphan*/  wrapfalloc ; 

void
FUNC5()
{
    size = 1000;
    falloc = &wrapfalloc;
    fallocpat[0] = 1;
    fallocpat[2] = 1;

    srv.wal.dir = FUNC2();
    srv.wal.use = 1;
    srv.wal.filesize = size;
    srv.wal.syncrate = 0;
    srv.wal.wantsync = 1;

    int port = FUNC0();
    int fd = FUNC3(port);
    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 1\r\n");
    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 2\r\n");
    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 3\r\n");
    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 4\r\n");

    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "OUT_OF_MEMORY\r\n");

    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 6\r\n");
    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 7\r\n");
    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 8\r\n");
    FUNC4(fd, "put 0 0 100 50\r\n");
    FUNC4(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
    FUNC1(fd, "INSERTED 9\r\n");

    FUNC4(fd, "delete 1\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC4(fd, "delete 2\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC4(fd, "delete 3\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC4(fd, "delete 4\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC4(fd, "delete 6\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC4(fd, "delete 7\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC4(fd, "delete 8\r\n");
    FUNC1(fd, "DELETED\r\n");
    FUNC4(fd, "delete 9\r\n");
    FUNC1(fd, "DELETED\r\n");
}