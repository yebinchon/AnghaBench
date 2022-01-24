#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int backend_ndx; TYPE_10__* backend; } ;
typedef  TYPE_5__ network_mysqld_con_lua_t ;
struct TYPE_17__ {TYPE_9__* server; int /*<<< orphan*/  srv; TYPE_5__* plugin_con_state; } ;
typedef  TYPE_6__ network_mysqld_con ;
typedef  int /*<<< orphan*/  network_connection_pool_entry ;
typedef  int /*<<< orphan*/  network_connection_pool ;
struct TYPE_19__ {int is_authed; int /*<<< orphan*/  event; int /*<<< orphan*/  fd; TYPE_7__* response; TYPE_4__* dst; TYPE_2__* src; } ;
struct TYPE_18__ {int /*<<< orphan*/  username; } ;
struct TYPE_15__ {TYPE_3__* name; } ;
struct TYPE_14__ {int /*<<< orphan*/  str; } ;
struct TYPE_13__ {TYPE_1__* name; } ;
struct TYPE_12__ {int /*<<< orphan*/  str; } ;
struct TYPE_11__ {int /*<<< orphan*/  connected_clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 TYPE_7__* FUNC9 () ; 
 int /*<<< orphan*/  network_mysqld_con_idle_handle ; 

int FUNC10(network_mysqld_con *con) {
	network_connection_pool_entry *pool_entry = NULL;
	network_mysqld_con_lua_t *st = con->plugin_con_state;

	/* con-server is already disconnected, got out */
	if (!con->server) return 0;

    /* TODO bug fix */
    /* when mysql return unkonw packet, response is null, insert the socket into pool cause segment fault. */
    /* ? should init socket->challenge  ? */
    /* if response is null, conn has not been authed, use an invalid username. */
    if(!con->server->response)
    {
        FUNC7("%s: (remove) remove socket from pool, response is NULL, src is %s, dst is %s",
            G_STRLOC, con->server->src->name->str, con->server->dst->name->str);

        con->server->response = FUNC9();
        FUNC6(con->server->response->username, FUNC0("mysql_proxy_invalid_user"));
    }

	/* the server connection is still authed */
	con->server->is_authed = 1;

	/* insert the server socket into the connection pool */
	network_connection_pool* pool = FUNC2(st->backend);
	pool_entry = FUNC8(pool, con->server);

	if (pool_entry) {
		FUNC3(&(con->server->event), con->server->fd, EV_READ, network_mysqld_con_idle_handle, pool_entry);
		FUNC1(con->srv, &(con->server->event)); /* add a event, but stay in the same thread */
	}

    if (!FUNC4(&st->backend->connected_clients, 0, 0)) {
        FUNC5(&st->backend->connected_clients);    
        //g_critical("add_connection: %08x's connected_clients is %d\n", backend,  backend->connected_clients);
    }

//	st->backend->connected_clients--;
	st->backend = NULL;
	st->backend_ndx = -1;
	
	con->server = NULL;

	return 0;
}