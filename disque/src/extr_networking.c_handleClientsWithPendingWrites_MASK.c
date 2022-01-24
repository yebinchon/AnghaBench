#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_8__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_9__ {int /*<<< orphan*/  el; int /*<<< orphan*/  clients_pending_write; } ;

/* Variables and functions */
 scalar_t__ AE_ERR ; 
 int /*<<< orphan*/  AE_WRITABLE ; 
 int /*<<< orphan*/  CLIENT_PENDING_WRITE ; 
 scalar_t__ C_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sendReplyToClient ; 
 TYPE_3__ server ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC9(void) {
    listIter li;
    listNode *ln;
    int processed = FUNC4(server.clients_pending_write);

    FUNC7(server.clients_pending_write,&li);
    while((ln = FUNC5(&li))) {
        client *c = FUNC6(ln);
        c->flags &= ~CLIENT_PENDING_WRITE;
        FUNC3(server.clients_pending_write,ln);

        /* Try to write buffers to the client socket. */
        if (FUNC8(c->fd,c,0) == C_ERR) continue;

        /* If there is nothing left, do nothing. Otherwise install
         * the write handler. */
        if (FUNC1(c) &&
            FUNC0(server.el, c->fd, AE_WRITABLE,
                sendReplyToClient, c) == AE_ERR)
        {
            FUNC2(c);
        }
    }
    return processed;
}