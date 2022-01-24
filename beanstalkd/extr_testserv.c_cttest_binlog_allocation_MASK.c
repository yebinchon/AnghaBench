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
 char* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int size ; 
 TYPE_2__ srv ; 

void
FUNC7()
{
    int i = 0;

    size = 601;
    srv.wal.dir = FUNC2();
    srv.wal.use = 1;
    srv.wal.filesize = size;
    srv.wal.syncrate = 0;
    srv.wal.wantsync = 1;

    int port = FUNC0();
    int fd = FUNC5(port);
    for (i = 1; i <= 96; i++) {
        char *exp = FUNC3("INSERTED %d\r\n", i);
        FUNC6(fd, "put 0 0 120 22\r\n");
        FUNC6(fd, "job payload xxxxxxxxxx\r\n");
        FUNC1(fd, exp);
        FUNC4(exp);
    }
    for (i = 1; i <= 96; i++) {
        char *exp = FUNC3("delete %d\r\n", i);
        FUNC6(fd, exp);
        FUNC1(fd, "DELETED\r\n");
        FUNC4(exp);
    }
}