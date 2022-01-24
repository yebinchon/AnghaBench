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
struct TYPE_2__ {int bindaddr_count; char** bindaddr; int /*<<< orphan*/  neterr; int /*<<< orphan*/  tcp_backlog; } ;

/* Variables and functions */
 int ANET_ERR ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char) ; 

int FUNC5(int port, int *fds, int *count) {
    int j;

    /* Force binding of 0.0.0.0 if no bind address is specified, always
     * entering the loop if j == 0. */
    if (server.bindaddr_count == 0) server.bindaddr[0] = NULL;
    for (j = 0; j < server.bindaddr_count || j == 0; j++) {
        if (server.bindaddr[j] == NULL) {
            /* Bind * for both IPv6 and IPv4, we enter here only if
             * server.bindaddr_count == 0. */
            fds[*count] = FUNC1(server.neterr,port,NULL,
                server.tcp_backlog);
            if (fds[*count] != ANET_ERR) {
                FUNC0(NULL,fds[*count]);
                (*count)++;
            }
            fds[*count] = FUNC2(server.neterr,port,NULL,
                server.tcp_backlog);
            if (fds[*count] != ANET_ERR) {
                FUNC0(NULL,fds[*count]);
                (*count)++;
            }
            /* Exit the loop if we were able to bind * on IPv4 or IPv6,
             * otherwise fds[*count] will be ANET_ERR and we'll print an
             * error and return to the caller with an error. */
            if (*count) break;
        } else if (FUNC4(server.bindaddr[j],':')) {
            /* Bind IPv6 address. */
            fds[*count] = FUNC1(server.neterr,port,server.bindaddr[j],
                server.tcp_backlog);
        } else {
            /* Bind IPv4 address. */
            fds[*count] = FUNC2(server.neterr,port,server.bindaddr[j],
                server.tcp_backlog);
        }
        if (fds[*count] == ANET_ERR) {
            FUNC3(LL_WARNING,
                "Creating Server TCP listening socket %s:%d: %s",
                server.bindaddr[j] ? server.bindaddr[j] : "*",
                port, server.neterr);
            return C_ERR;
        }
        FUNC0(NULL,fds[*count]);
        (*count)++;
    }
    return C_OK;
}