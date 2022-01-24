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
typedef  int /*<<< orphan*/  network_socket ;
struct TYPE_3__ {scalar_t__ backend_ndx; } ;
typedef  TYPE_1__ network_mysqld_con_lua_t ;
struct TYPE_4__ {int /*<<< orphan*/ * client; int /*<<< orphan*/ * server; TYPE_1__* plugin_con_state; } ;
typedef  TYPE_2__ network_mysqld_con ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
	network_mysqld_con *con = *(network_mysqld_con **)FUNC2(L); 
	network_mysqld_con_lua_t *st;
	gsize keysize = 0;
	const char *key = FUNC1(L, 2, &keysize);

	st = con->plugin_con_state;

	/**
	 * we to split it in .client and .server here
	 */

	if (FUNC9(key, keysize, FUNC0("default_db"))) {
		return FUNC3(L, "proxy.connection.default_db is deprecated, use proxy.connection.client.default_db or proxy.connection.server.default_db instead");
	} else if (FUNC9(key, keysize, FUNC0("thread_id"))) {
		return FUNC3(L, "proxy.connection.thread_id is deprecated, use proxy.connection.server.thread_id instead");
	} else if (FUNC9(key, keysize, FUNC0("mysqld_version"))) {
		return FUNC3(L, "proxy.connection.mysqld_version is deprecated, use proxy.connection.server.mysqld_version instead");
	} else if (FUNC9(key, keysize, FUNC0("backend_ndx"))) {
		FUNC5(L, st->backend_ndx + 1);
	} else if ((con->server && (FUNC9(key, keysize, FUNC0("server")))) ||
	           (con->client && (FUNC9(key, keysize, FUNC0("client"))))) {
		network_socket **socket_p;

		socket_p = FUNC4(L, sizeof(network_socket)); /* the table underneat proxy.socket */

		if (key[0] == 's') {
			*socket_p = con->server;
		} else {
			*socket_p = con->client;
		}

		FUNC8(L);
		FUNC7(L, -2); /* tie the metatable to the table   (sp -= 1) */
	} else {
		FUNC6(L);
	}

	return 1;
}