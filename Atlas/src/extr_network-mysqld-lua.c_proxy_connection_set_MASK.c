#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_socket ;
struct TYPE_7__ {int backend_ndx; int /*<<< orphan*/  connection_close; TYPE_1__* backend; } ;
typedef  TYPE_2__ network_mysqld_con_lua_t ;
struct TYPE_8__ {int /*<<< orphan*/ * server; TYPE_2__* plugin_con_state; } ;
typedef  TYPE_3__ network_mysqld_con ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_6__ {int /*<<< orphan*/  connected_clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LUA_TBOOLEAN ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(lua_State *L) {
	network_mysqld_con *con = *(network_mysqld_con **)FUNC3(L);
	network_mysqld_con_lua_t *st;
	gsize keysize = 0;
	const char *key = FUNC2(L, 2, &keysize);

	st = con->plugin_con_state;

	if (FUNC11(key, keysize, FUNC0("backend_ndx"))) {
		/**
		 * in lua-land the ndx is based on 1, in C-land on 0 */
		int backend_ndx = FUNC1(L, 3) - 1;
		network_socket *send_sock;
			
		if (backend_ndx == -1) {
			/** drop the backend for now
			 */
			FUNC7(con);
		} else if (NULL != (send_sock = FUNC8(con, backend_ndx, NULL))) {
			con->server = send_sock;
		} else if (backend_ndx == -2) {
			if (st->backend != NULL) {
				st->backend->connected_clients--;
				st->backend = NULL;
			}
			st->backend_ndx = -1;
			FUNC9(con->server);
			con->server = NULL;
		} else {
			st->backend_ndx = backend_ndx;
		}
	} else if (0 == FUNC10(key, "connection_close")) {
		FUNC4(L, 3, LUA_TBOOLEAN);

		st->connection_close = FUNC6(L, 3);
	} else {
		return FUNC5(L, "proxy.connection.%s is not writable", key);
	}

	return 0;
}