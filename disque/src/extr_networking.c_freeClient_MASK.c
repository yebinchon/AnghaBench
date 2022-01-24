#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
struct TYPE_10__ {int /*<<< orphan*/  queues; } ;
struct TYPE_11__ {int flags; int /*<<< orphan*/ * peerid; struct TYPE_11__* argv; scalar_t__ name; int /*<<< orphan*/  reply; TYPE_1__ bpop; int /*<<< orphan*/ * querybuf; } ;
typedef  TYPE_2__ client ;
struct TYPE_12__ {int /*<<< orphan*/  clients_to_close; int /*<<< orphan*/  monitors; } ;

/* Variables and functions */
 int CLIENT_BLOCKED ; 
 int CLIENT_CLOSE_ASAP ; 
 int CLIENT_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_6__ server ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

void FUNC11(client *c) {
    listNode *ln;

    /* Free the query buffer */
    FUNC6(c->querybuf);
    c->querybuf = NULL;

    /* Deallocate structures used to block on blocking ops. */
    if (c->flags & CLIENT_BLOCKED) FUNC8(c);
    FUNC1(c->bpop.queues);

    /* Free data structures. */
    FUNC4(c->reply);
    FUNC2(c);

    /* Unlink the client: this will close the socket, remove the I/O
     * handlers, and remove references of the client from different
     * places where active clients may be referenced. */
    FUNC9(c);

    /* Monitors cleanup. */
    if (c->flags & CLIENT_MONITOR) {
        ln = FUNC5(server.monitors,c);
        FUNC7(ln != NULL);
        FUNC3(server.monitors,ln);
    }

    /* If this client was scheduled for async freeing we need to remove it
     * from the queue. */
    if (c->flags & CLIENT_CLOSE_ASAP) {
        ln = FUNC5(server.clients_to_close,c);
        FUNC7(ln != NULL);
        FUNC3(server.clients_to_close,ln);
    }

    /* Release other dynamically allocated client structure fields,
     * and finally release the client structure itself. */
    if (c->name) FUNC0(c->name);
    FUNC10(c->argv);
    FUNC6(c->peerid);
    FUNC10(c);
}