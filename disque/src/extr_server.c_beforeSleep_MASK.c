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
struct aeEventLoop {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unblocked_clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aeEventLoop*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ server ; 

void FUNC7(struct aeEventLoop *eventLoop) {
    FUNC0(eventLoop);

    /* Call the Cluster before sleep function. Note that this function
     * may change the state of Cluster, so it's a good idea to call it
     * before serving the unblocked clients later in this function. */
    FUNC1();

    /* Unblock clients waiting to receive messages into queues.
     * We do this both on processCommand() and here, since we need to
     * unblock clients when queues are populated asynchronously. */
    FUNC3();

    /* Try to process pending commands for clients that were just unblocked. */
    if (FUNC5(server.unblocked_clients))
        FUNC6();

    /* Write the AOF buffer on disk */
    FUNC2(0);

    /* Handle writes with pending output buffers. */
    FUNC4();
}