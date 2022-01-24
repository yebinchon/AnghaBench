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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct server_worker {int bind_addrs_len; int max_open; char* wget_host_ip; char* tftp_host_ip; int workers_len; int thread_id; int efd; int /*<<< orphan*/  to_thrd; int /*<<< orphan*/  thread; struct server_worker* workers; struct server_worker* srv; TYPE_1__** estab_conns; int /*<<< orphan*/  wget_host_port; int /*<<< orphan*/ * bind_addrs; } ;
struct server {int bind_addrs_len; int max_open; char* wget_host_ip; char* tftp_host_ip; int workers_len; int thread_id; int efd; int /*<<< orphan*/  to_thrd; int /*<<< orphan*/  thread; struct server* workers; struct server* srv; TYPE_1__** estab_conns; int /*<<< orphan*/  wget_host_port; int /*<<< orphan*/ * bind_addrs; } ;
struct connection {int dummy; } ;
typedef  int /*<<< orphan*/  port_t ;
typedef  int /*<<< orphan*/  ipv4_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct server_worker*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct server_worker*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout_thread ; 
 int /*<<< orphan*/  worker ; 

struct server *FUNC7(uint8_t threads, uint8_t addr_len, ipv4_t *addrs, uint32_t max_open, char *wghip, port_t wghp, char *thip)
{
    struct server *srv = FUNC0(1, sizeof (struct server));
    struct server_worker *workers = FUNC0(threads, sizeof (struct server_worker));
    int i;

    // Fill out the structure
    srv->bind_addrs_len = addr_len;
    srv->bind_addrs = addrs;
    srv->max_open = max_open;
    srv->wget_host_ip = wghip;
    srv->wget_host_port = wghp;
    srv->tftp_host_ip = thip;
    srv->estab_conns = FUNC0(max_open * 2, sizeof (struct connection *));
    srv->workers = FUNC0(threads, sizeof (struct server_worker));
    srv->workers_len = threads;

    if (srv->estab_conns == NULL)
    {
        FUNC4("Failed to allocate establisted_connections array\n");
        FUNC2(0);
    }

    // Allocate locks internally
    for (i = 0; i < max_open * 2; i++)
    {
        srv->estab_conns[i] = FUNC0(1, sizeof (struct connection));
        if (srv->estab_conns[i] == NULL)
        {
            FUNC4("Failed to allocate connection %d\n", i);
            FUNC2(-1);
        }
        FUNC6(&(srv->estab_conns[i]->lock), NULL);
    }

    // Create worker threads
    for (i = 0; i < threads; i++)
    {
        struct server_worker *wrker = &srv->workers[i];

        wrker->srv = srv;
        wrker->thread_id = i;

        if ((wrker->efd = FUNC1(0)) == -1)
        {
            FUNC4("Failed to initialize epoll context. Error code %d\n", errno);
            FUNC3(srv->workers);
            FUNC3(srv);
            return NULL;
        }

        FUNC5(&wrker->thread, NULL, worker, wrker);
    }

    FUNC5(&srv->to_thrd, NULL, timeout_thread, srv);

    return srv;
}