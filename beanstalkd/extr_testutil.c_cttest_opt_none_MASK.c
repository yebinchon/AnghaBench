#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ filesize; scalar_t__ wantsync; scalar_t__ use; int /*<<< orphan*/ * dir; } ;
struct TYPE_5__ {TYPE_1__ wal; int /*<<< orphan*/ * user; int /*<<< orphan*/ * addr; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ Filesizedef ; 
 scalar_t__ JOB_DATA_SIZE_LIMIT_DEFAULT ; 
 int /*<<< orphan*/  Portdef ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ job_data_size_limit ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char**) ; 
 TYPE_2__ srv ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

void
FUNC3()
{
    char *args[] = {
        NULL,
    };

    FUNC1(&srv, args);
    FUNC0(FUNC2(srv.port, Portdef) == 0);
    FUNC0(srv.addr == NULL);
    FUNC0(job_data_size_limit == JOB_DATA_SIZE_LIMIT_DEFAULT);
    FUNC0(srv.wal.filesize == Filesizedef);
    FUNC0(srv.wal.wantsync == 0);
    FUNC0(srv.user == NULL);
    FUNC0(srv.wal.dir == NULL);
    FUNC0(srv.wal.use == 0);
    FUNC0(verbose == 0);
}