#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_2__ {scalar_t__ aof_state; int aof_child_pid; int /*<<< orphan*/  aof_buf; } ;

/* Variables and functions */
 scalar_t__ AOF_ON ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__ server ; 

void FUNC6(robj **argv, int argc) {
    sds buf = FUNC3();

    buf = FUNC1(buf,argc,argv);

    /* Append to the AOF buffer. This will be flushed on disk just before
     * of re-entering the event loop, so before the client will get a
     * positive reply about the operation performed. */
    if (server.aof_state == AOF_ON)
        server.aof_buf = FUNC2(server.aof_buf,buf,FUNC5(buf));

    /* If a background append only file rewriting is in progress we want to
     * accumulate the differences between the child DB and the current one
     * in a buffer, so that when the child process will do its work we
     * can append the differences to the new append only file. */
    if (server.aof_child_pid != -1)
        FUNC0((unsigned char*)buf,FUNC5(buf));

    FUNC4(buf);
}