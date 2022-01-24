#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connection {int timeout; int fd; int /*<<< orphan*/  lock; scalar_t__ echo_load_pos; int /*<<< orphan*/ * bin; int /*<<< orphan*/  open; int /*<<< orphan*/  success; int /*<<< orphan*/  state_telnet; int /*<<< orphan*/  last_recv; scalar_t__ rdbuf_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TELNET_CONNECTING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct connection *conn)
{
    FUNC1(&conn->lock);

    conn->rdbuf_pos = 0;
    conn->last_recv = FUNC3(NULL);
    conn->timeout = 10;
    conn->echo_load_pos = 0;
    conn->state_telnet = TELNET_CONNECTING;
    conn->success = FALSE;
    conn->open = TRUE;
    conn->bin = NULL;
    conn->echo_load_pos = 0;
#ifdef DEBUG
    printf("[FD%d] Called connection_open\n", conn->fd);
#endif

    FUNC2(&conn->lock);
}