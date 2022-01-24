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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int addr; char* user; char* pass; char* arch; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {scalar_t__ deadline; int /*<<< orphan*/  data; } ;
struct connection {int fd; int state_telnet; int /*<<< orphan*/  lock; TYPE_3__* srv; TYPE_2__ info; scalar_t__ success; scalar_t__ rdbuf_pos; int /*<<< orphan*/  rdbuf; void* ctrlc_retry; void* retry_bin; void* open; scalar_t__ last_recv; TYPE_1__ output_buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  curr_open; int /*<<< orphan*/  total_failures; int /*<<< orphan*/  total_successes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int TELNET_CLOSED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC9(struct connection *conn)
{
    FUNC7(&conn->lock);

    if (conn->open)
    {
#ifdef DEBUG
        printf("[FD%d] Shut down connection\n", conn->fd);
#endif
        FUNC4(conn->output_buffer.data, 0, sizeof(conn->output_buffer.data));
        conn->output_buffer.deadline = 0;
        conn->last_recv = 0;
        conn->open = FALSE;
        conn->retry_bin = FALSE;
        conn->ctrlc_retry = FALSE;
        FUNC4(conn->rdbuf, 0, sizeof(conn->rdbuf));
        conn->rdbuf_pos = 0;

        if (conn->srv == NULL)
        {
            FUNC6("srv == NULL\n");
            return;
        }

        if (conn->success)
        {
            FUNC1(&conn->srv->total_successes);
            FUNC3(stderr, "OK|%d.%d.%d.%d:%d %s:%s %s\n",
                conn->info.addr & 0xff, (conn->info.addr >> 8) & 0xff, (conn->info.addr >> 16) & 0xff, (conn->info.addr >> 24) & 0xff,
                FUNC5(conn->info.port),
                conn->info.user, conn->info.pass, conn->info.arch);
        }
        else
        {
            FUNC1(&conn->srv->total_failures);
            FUNC3(stderr, "ERR|%d.%d.%d.%d:%d %s:%s %s|%d\n",
                conn->info.addr & 0xff, (conn->info.addr >> 8) & 0xff, (conn->info.addr >> 16) & 0xff, (conn->info.addr >> 24) & 0xff,
                FUNC5(conn->info.port),
                conn->info.user, conn->info.pass, conn->info.arch,
                conn->state_telnet);
        }
    }
    conn->state_telnet = TELNET_CLOSED;

    if (conn->fd != -1)
    {
        FUNC2(conn->fd);
        conn->fd = -1;
        FUNC0(&conn->srv->curr_open);
    }

    FUNC8(&conn->lock);
}