#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_10__ {int /*<<< orphan*/ * clients; } ;
typedef  TYPE_2__ queue ;
typedef  int /*<<< orphan*/  mstime_t ;
struct TYPE_9__ {int /*<<< orphan*/  queues; int /*<<< orphan*/  flags; int /*<<< orphan*/  timeout; } ;
struct TYPE_11__ {TYPE_1__ bpop; } ;
typedef  TYPE_3__ client ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKED_GETJOB ; 
 scalar_t__ DICT_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(client *c, robj **queues, int numqueues, mstime_t timeout, uint64_t flags) {
    int j;

    c->bpop.timeout = timeout;
    c->bpop.flags = flags;
    for (j = 0; j < numqueues; j++) {
        queue *q = FUNC6(queues[j]);
        if (!q) q = FUNC1(queues[j]);

        /* Handle duplicated queues in array. */
        if (FUNC2(c->bpop.queues,queues[j],NULL) != DICT_OK) continue;
        FUNC3(queues[j]);

        /* Add this client to the list of clients in the queue. */
        if (q->clients == NULL) q->clients = FUNC5();
        FUNC4(q->clients,c);
    }
    FUNC0(c,BLOCKED_GETJOB);
}