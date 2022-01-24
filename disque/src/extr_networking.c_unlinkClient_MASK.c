#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
struct TYPE_5__ {int fd; int flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_6__ {int /*<<< orphan*/  unblocked_clients; int /*<<< orphan*/  clients_pending_write; int /*<<< orphan*/  el; int /*<<< orphan*/  clients; TYPE_1__* current_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  AE_WRITABLE ; 
 int CLIENT_PENDING_WRITE ; 
 int CLIENT_UNBLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(client *c) {
    listNode *ln;

    /* If this is marked as current client unset it. */
    if (server.current_client == c) server.current_client = NULL;

    /* Certain operations must be done only if the client has an active socket.
     * If the client was already unlinked or if it's a "fake client" the
     * fd is already set to -1. */
    if (c->fd != -1) {
        /* Remove from the list of active clients. */
        ln = FUNC3(server.clients,c);
        FUNC4(ln != NULL);
        FUNC2(server.clients,ln);

        /* Unregister async I/O handlers and close the socket. */
        FUNC0(server.el,c->fd,AE_READABLE);
        FUNC0(server.el,c->fd,AE_WRITABLE);
        FUNC1(c->fd);
        c->fd = -1;
    }

    /* Remove from the list of pending writes if needed. */
    if (c->flags & CLIENT_PENDING_WRITE) {
        ln = FUNC3(server.clients_pending_write,c);
        FUNC4(ln != NULL);
        FUNC2(server.clients_pending_write,ln);
    }

    /* When client was just unblocked because of a blocking operation,
     * remove it from the list of unblocked clients. */
    if (c->flags & CLIENT_UNBLOCKED) {
        ln = FUNC3(server.unblocked_clients,c);
        FUNC4(ln != NULL);
        FUNC2(server.unblocked_clients,ln);
    }
}