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
typedef  int int64 ;
struct TYPE_3__ {int use; int filesize; int syncrate; int wantsync; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_DATA_SIZE_LIMIT_MAX ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  job_data_size_limit ; 
 int /*<<< orphan*/  FUNC7 (char*,char,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 TYPE_2__ srv ; 

__attribute__((used)) static void
FUNC11(int n, int size, int walsize, int sync, int64 syncrate_ms)
{
    if (walsize > 0) {
        srv.wal.dir = FUNC3();
        srv.wal.use = 1;
        srv.wal.filesize = walsize;
        srv.wal.syncrate = syncrate_ms * 1000000;
        srv.wal.wantsync = sync;
    }

    job_data_size_limit = JOB_DATA_SIZE_LIMIT_MAX;
    int port = FUNC0();
    int fd = FUNC8(port);
    char buf[50], put[50];
    char body[size+1];
    FUNC7(body, 'a', size);
    body[size] = 0;
    FUNC5(size);
    FUNC10(put, "put 0 0 0 %d\r\n", size);
    FUNC4();
    int i;
    for (i = 0; i < n; i++) {
        FUNC9(fd, put);
        FUNC9(fd, body);
        FUNC9(fd, "\r\n");
        FUNC2(fd, "INSERTED ");
        FUNC10(buf, "delete %d\r\n", i + 1);
        FUNC9(fd, buf);
        FUNC1(fd, "DELETED\r\n");
    }
    FUNC6();
}