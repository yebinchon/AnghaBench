#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ maxclients; int /*<<< orphan*/  stat_numconnections; int /*<<< orphan*/  stat_rejected_conn; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(int fd, int flags) {
    client *c;
    if ((c = FUNC1(fd)) == NULL) {
        FUNC4(LL_WARNING,
            "Error registering fd event for the new client: %s (fd=%d)",
            FUNC5(errno),fd);
        FUNC0(fd); /* May be already closed, just ignore errors */
        return;
    }
    /* If maxclient directive is set and this is one client more... close the
     * connection. Note that we create the client instead to check before
     * for this condition, since now the socket is already set in non-blocking
     * mode and we can send an error for free using the Kernel I/O */
    if (FUNC3(server.clients) > server.maxclients) {
        char *err = "-ERR max number of clients reached\r\n";

        /* That's a best effort error message, don't check write errors */
        if (FUNC7(c->fd,err,FUNC6(err)) == -1) {
            /* Nothing to do, Just to avoid the warning... */
        }
        server.stat_rejected_conn++;
        FUNC2(c);
        return;
    }
    server.stat_numconnections++;
    c->flags |= flags;
}