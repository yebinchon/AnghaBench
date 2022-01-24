#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  queries; } ;
struct TYPE_13__ {TYPE_1__ injected; } ;
typedef  TYPE_4__ network_mysqld_con_lua_t ;
struct TYPE_14__ {TYPE_4__* plugin_con_state; TYPE_3__* client; } ;
typedef  TYPE_5__ network_mysqld_con ;
struct TYPE_15__ {int /*<<< orphan*/  resultset_is_needed; } ;
typedef  TYPE_6__ injection ;
struct TYPE_12__ {TYPE_2__* default_db; } ;
struct TYPE_11__ {char* str; } ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 char COM_INIT_DB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 TYPE_6__* FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

void FUNC5(network_mysqld_con* con) {
	char* default_db = con->client->default_db->str;

	if (default_db != NULL && FUNC4(default_db, "") != 0) {
		char cmd = COM_INIT_DB;
		GString* query = FUNC2(&cmd, 1);
		FUNC1(query, default_db);
		injection* inj = FUNC3(2, query);
		inj->resultset_is_needed = TRUE;
		network_mysqld_con_lua_t* st = con->plugin_con_state;
		FUNC0(st->injected.queries, inj);
	}
}