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
struct TYPE_3__ {int dir; int use; int filesize; int wantsync; scalar_t__ syncrate; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int size ; 
 TYPE_2__ srv ; 

void
FUNC10()
{
    int i = 0;
    int gotsize;

    size = 4096;
    srv.wal.dir = FUNC3();
    srv.wal.use = 1;
    srv.wal.filesize = size;
    srv.wal.syncrate = 0;
    srv.wal.wantsync = 1;

    int port = FUNC0();
    int fd = FUNC8(port);
    char *b2 = FUNC6("%s/binlog.2", FUNC3());
    while (!FUNC4(b2)) {
        char *exp = FUNC6("INSERTED %d\r\n", ++i);
        FUNC9(fd, "put 0 0 100 50\r\n");
        FUNC9(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
        FUNC2(fd, exp);
        FUNC7(exp);
    }

    char *b1 = FUNC6("%s/binlog.1", FUNC3());
    gotsize = FUNC5(b1);
    FUNC1(gotsize == size, "binlog.1 %d != %d", gotsize, size);
    gotsize = FUNC5(b2);
    FUNC1(gotsize == size, "binlog.2 %d != %d", gotsize, size);
    FUNC7(b1);
    FUNC7(b2);
}