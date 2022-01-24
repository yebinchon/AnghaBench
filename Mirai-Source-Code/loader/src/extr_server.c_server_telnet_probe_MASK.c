#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct telnet_info {int /*<<< orphan*/  port; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct server_worker {int /*<<< orphan*/  efd; } ;
struct server {size_t workers_len; int max_open; struct connection** estab_conns; int /*<<< orphan*/  curr_open; int /*<<< orphan*/  curr_worker_child; struct server_worker* workers; } ;
struct TYPE_4__ {int fd; } ;
struct epoll_event {int /*<<< orphan*/  events; TYPE_2__ data; } ;
struct connection {int fd; struct server* srv; int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  EPOLLOUT ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct telnet_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct server*) ; 

void FUNC10(struct server *srv, struct telnet_info *info)
{
    int fd = FUNC9(srv);
    struct sockaddr_in addr;
    struct connection *conn;
    struct epoll_event event;
    int ret;
    struct server_worker *wrker = &srv->workers[FUNC1(&srv->curr_worker_child) % srv->workers_len];

    if (fd == -1)
    {
        if (FUNC8(NULL) % 10 == 0)
        {
            FUNC7("Failed to open and bind socket\n");
        }
        FUNC0(&srv->curr_open);
        return;
    }
    while (fd >= (srv->max_open * 2))
    {
        FUNC7("fd too big\n");
        conn->fd = fd;
#ifdef DEBUG
        printf("Can't utilize socket because client buf is not large enough\n");
#endif
        FUNC3(conn);
        return;
    }

    if (srv == NULL)
        FUNC7("srv == NULL 4\n");

    conn = srv->estab_conns[fd];
    FUNC6(&conn->info, info, sizeof (struct telnet_info));
    conn->srv = srv;
    conn->fd = fd;
    FUNC4(conn);

    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = info->addr;
    addr.sin_port = info->port;
    ret = FUNC2(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in));
    if (ret == -1 && errno != EINPROGRESS)
    {
        FUNC7("got connect error\n");
    }

    event.data.fd = fd;
    event.events = EPOLLOUT;
    FUNC5(wrker->efd, EPOLL_CTL_ADD, fd, &event);
}