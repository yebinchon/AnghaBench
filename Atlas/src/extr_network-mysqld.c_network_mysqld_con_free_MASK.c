#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* backend; } ;
typedef  TYPE_3__ network_mysqld_con_lua_t ;
struct TYPE_11__ {scalar_t__ data; int /*<<< orphan*/  (* data_free ) (scalar_t__) ;} ;
struct TYPE_14__ {scalar_t__ len; scalar_t__ challenge; struct TYPE_14__* merge_res; struct TYPE_14__* rows; int /*<<< orphan*/  locks; scalar_t__ charset_connection; scalar_t__ charset_results; scalar_t__ charset_client; TYPE_3__* plugin_con_state; scalar_t__ client; scalar_t__ server; TYPE_1__ parse; } ;
typedef  TYPE_4__ network_mysqld_con ;
typedef  scalar_t__ guint ;
struct TYPE_12__ {int /*<<< orphan*/  connected_clients; } ;
typedef  TYPE_4__ GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

void FUNC10(network_mysqld_con *con) {
	if (!con) return;

	if (con->parse.data && con->parse.data_free) {
		con->parse.data_free(con->parse.data);
	}

	if (con->server) FUNC8(con->server);
	if (con->client) FUNC8(con->client);
    
    network_mysqld_con_lua_t *st = con->plugin_con_state;
    if (st && st->backend) {
        if (!FUNC0(&st->backend->connected_clients, 0, 0)) {
            FUNC1(&st->backend->connected_clients);    
            //g_critical("last in CON_STATE_CONNECT_SERVER: %08x's connected_clients is %d\n", st->onnected_clients);
        }
    }

	/* we are still in the conns-array */
/*
	g_mutex_lock(&con_mutex);
	g_ptr_array_remove_fast(con->srv->priv->cons, con);
	g_mutex_unlock(&con_mutex);
*/
	FUNC7(con->charset_client, TRUE);
	FUNC7(con->charset_results, TRUE);
	FUNC7(con->charset_connection, TRUE);

	FUNC4(con->locks);
	FUNC3(con->locks);

	if (con->merge_res) {
		GPtrArray* rows = con->merge_res->rows;
		if (rows) {
			guint i;
			for (i = 0; i < rows->len; ++i) {
				GPtrArray* row = FUNC6(rows, i);
				guint j;
				for (j = 0; j < row->len; ++j) {
					FUNC2(FUNC6(row, j));
				}
				FUNC5(row, TRUE);
			}
			FUNC5(rows, TRUE);
		}
		FUNC2(con->merge_res);
	}

	if (con->challenge) FUNC7(con->challenge, TRUE);

	FUNC2(con);
}