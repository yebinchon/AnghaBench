#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_24__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  queries; } ;
struct TYPE_34__ {TYPE_4__ injected; } ;
typedef  TYPE_7__ network_mysqld_con_lua_t ;
struct TYPE_35__ {TYPE_6__* client; TYPE_7__* plugin_con_state; TYPE_3__* server; } ;
typedef  TYPE_8__ network_mysqld_con ;
struct TYPE_36__ {int /*<<< orphan*/  resultset_is_needed; } ;
typedef  TYPE_9__ injection ;
struct TYPE_33__ {TYPE_5__* response; } ;
struct TYPE_32__ {int /*<<< orphan*/  response; TYPE_10__* username; } ;
struct TYPE_30__ {TYPE_2__* challenge; TYPE_1__* response; } ;
struct TYPE_29__ {TYPE_10__* challenge; } ;
struct TYPE_28__ {size_t pwd_table_index; int /*<<< orphan*/ * pwd_table; } ;
struct TYPE_27__ {TYPE_10__* username; } ;
struct TYPE_26__ {int len; int /*<<< orphan*/  str; } ;
typedef  TYPE_10__ GString ;

/* Variables and functions */
 int COM_CHANGE_USER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_24__* config ; 
 TYPE_10__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC11 (int,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(network_mysqld_con* con) {
	if (con->server == NULL) return;

	GString* client_user = con->client->response->username;
	GString* server_user = con->server->response->username;

	if (!FUNC6(client_user, server_user)) {
		GString* com_change_user = FUNC8(NULL);

		FUNC3(com_change_user, COM_CHANGE_USER);
		FUNC4(com_change_user, client_user->str, client_user->len + 1);

		GString* hashed_password = FUNC1(config->pwd_table[config->pwd_table_index], client_user->str);
		if (!hashed_password) return;

		GString* expected_response = FUNC9(20);
		FUNC12(expected_response, FUNC0(con->server->challenge->challenge), FUNC0(hashed_password));

		FUNC3(com_change_user, (expected_response->len & 0xff));
		FUNC4(com_change_user, FUNC0(expected_response));
		FUNC3(com_change_user, 0);

		injection* inj = FUNC11(6, com_change_user);
		inj->resultset_is_needed = TRUE;
		network_mysqld_con_lua_t* st = con->plugin_con_state;
		FUNC2(st->injected.queries, inj);

		FUNC10(con->client->response->response, 0);
		FUNC5(con->client->response->response, expected_response->str);
		FUNC7(expected_response, TRUE);
	}
}