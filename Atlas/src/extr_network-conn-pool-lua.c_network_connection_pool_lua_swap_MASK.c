#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_socket ;
struct TYPE_17__ {int backend_ndx; TYPE_7__* backend; } ;
typedef  TYPE_5__ network_mysqld_con_lua_t ;
struct TYPE_18__ {TYPE_4__* client; TYPE_1__* srv; TYPE_5__* plugin_con_state; } ;
typedef  TYPE_6__ network_mysqld_con ;
typedef  int /*<<< orphan*/  network_connection_pool ;
struct TYPE_19__ {int /*<<< orphan*/  connected_clients; } ;
typedef  TYPE_7__ network_backend_t ;
struct TYPE_16__ {TYPE_3__* response; } ;
struct TYPE_15__ {TYPE_2__* username; } ;
struct TYPE_14__ {char* str; } ;
struct TYPE_13__ {int /*<<< orphan*/  backends; } ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 

network_socket *FUNC7(network_mysqld_con *con, int backend_ndx, GHashTable *pwd_table) {
	network_backend_t *backend = NULL;
	network_socket *send_sock;
	network_mysqld_con_lua_t *st = con->plugin_con_state;
//	GString empty_username = { "", 0, 0 };

	/*
	 * we can only change to another backend if the backend is already
	 * in the connection pool and connected
	 */

	backend = FUNC4(con->srv->backends, backend_ndx);
	if (!backend) return NULL;


	/**
	 * get a connection from the pool which matches our basic requirements
	 * - username has to match
	 * - default_db should match
	 */
		
#ifdef DEBUG_CONN_POOL
	g_debug("%s: (swap) check if we have a connection for this user in the pool '%s'", G_STRLOC, con->client->response ? con->client->response->username->str: "empty_user");
#endif
       int flag = 0;
	network_connection_pool* pool = FUNC0(backend);
	if (NULL == (send_sock = FUNC5(pool))) {
		/**
		 * no connections in the pool
		 */
        flag = 1;
		if (NULL == (send_sock = FUNC6(con, backend, pwd_table))) {
			st->backend_ndx = -1;
			return NULL;
		}
	}

	/* the backend is up and cool, take and move the current backend into the pool */
#ifdef DEBUG_CONN_POOL
	g_debug("%s: (swap) added the previous connection to the pool", G_STRLOC);
#endif
//	network_connection_pool_lua_add_connection(con);

	/* connect to the new backend */
	st->backend = backend;
//	st->backend->connected_clients++;
	st->backend_ndx = backend_ndx;
    
        if (flag == 0 && !FUNC1(&st->backend->connected_clients, 0, 0)) {
            FUNC2(&st->backend->connected_clients);
            //g_critical("pool_lua_swap:%08x's connected_clients is %d\n", backend,  backend->connected_clients);
        }

	return send_sock;
}