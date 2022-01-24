#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_mysqld_register_callback_ret ;
struct TYPE_8__ {int /*<<< orphan*/ * queries; } ;
struct TYPE_9__ {int /*<<< orphan*/ * L; int /*<<< orphan*/  L_ref; TYPE_1__ injected; } ;
typedef  TYPE_2__ network_mysqld_con_lua_t ;
struct TYPE_10__ {TYPE_5__* srv; TYPE_2__* plugin_con_state; } ;
typedef  TYPE_3__ network_mysqld_con ;
struct TYPE_11__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_4__ lua_scope ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  con ;
struct TYPE_12__ {TYPE_4__* sc; } ;
typedef  int /*<<< orphan*/  GQueue ;

/* Variables and functions */
 int LUA_GLOBALSINDEX ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  REGISTER_CALLBACK_EXECUTE_FAILED ; 
 int /*<<< orphan*/  REGISTER_CALLBACK_LOAD_FAILED ; 
 int /*<<< orphan*/  REGISTER_CALLBACK_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  response_get ; 
 int /*<<< orphan*/  response_set ; 

network_mysqld_register_callback_ret FUNC27(network_mysqld_con *con, const char *lua_script) {
	lua_State *L = NULL;
	network_mysqld_con_lua_t *st   = con->plugin_con_state;

	lua_scope  *sc = con->srv->sc;

	GQueue **q_p;
	network_mysqld_con **con_p;
	int stack_top;

	if (!lua_script) return REGISTER_CALLBACK_SUCCESS;

	if (st->L) {
		/* we have to rewrite _G.proxy to point to the local proxy */
		L = st->L;

		FUNC0(FUNC9(L, -1));

		FUNC4(L, -1);
		FUNC0(FUNC10(L, -1));

		FUNC6(L, "proxy");
		FUNC7(L, -1); /* meta(_G.proxy) */

		FUNC5(L, -3, "__proxy"); /* fenv.__proxy */
		FUNC19(L, -2, "__index"); /* meta[_G.proxy].__index = fenv.__proxy */

		FUNC5(L, -3, "__proxy"); /* fenv.__proxy */
		FUNC19(L, -2, "__newindex"); /* meta[_G.proxy].__newindex = fenv.__proxy */

		FUNC15(L, 3);

		FUNC0(FUNC9(L, -1));

		return REGISTER_CALLBACK_SUCCESS; /* the script-env already setup, get out of here */
	}

	/* handles loading the file from disk/cache*/
	if (0 != FUNC24(sc, lua_script)) {
		/* loading script failed */
		return REGISTER_CALLBACK_LOAD_FAILED;
	}

	/* sets up global tables */
	FUNC25(sc->L, con->srv);

	/**
	 * create a side thread for this connection
	 *
	 * (this is not pre-emptive, it is just a new stack in the global env)
	 */
	L = FUNC12(sc->L);

	st->L_ref = FUNC2(sc->L, LUA_REGISTRYINDEX);

	stack_top = FUNC8(L);

	/* get the script from the global stack */
	FUNC22(sc->L, L, 1);
	FUNC0(FUNC9(L, -1));

	FUNC11(L); /* my empty environment aka {}              (sp += 1) 1 */

	FUNC11(L); /* the meta-table for the new env           (sp += 1) 2 */

	FUNC17(L, LUA_GLOBALSINDEX);                       /* (sp += 1) 3 */
	FUNC19(L, -2, "__index"); /* { __index = _G }          (sp -= 1) 2 */
	FUNC20(L, -2); /* setmetatable({}, {__index = _G}) (sp -= 1) 1 */

	FUNC11(L); /* __proxy = { }                            (sp += 1) 2 */

	FUNC0(FUNC10(L, -1));

	q_p = FUNC13(L, sizeof(GQueue *));               /* (sp += 1) 3 */
	*q_p = st->injected.queries;

	/*
	 * proxy.queries
	 *
	 * implement a queue
	 *
	 * - append(type, query)
	 * - prepend(type, query)
	 * - reset()
	 * - len() and #proxy.queue
	 *
	 */
	FUNC26(L);

	FUNC17(L, -1); /* meta.__index = meta */
	FUNC19(L, -2, "__index");

	FUNC20(L, -2);


	FUNC19(L, -2, "queries"); /* proxy.queries = <userdata> */

	/*
	 * proxy.connection is (mostly) read-only
	 *
	 * .thread_id  = ... thread-id against this server
	 * .backend_id = ... index into proxy.global.backends[ndx]
	 *
	 */

	con_p = FUNC13(L, sizeof(con));                          /* (sp += 1) */
	*con_p = con;

	FUNC23(L);
	FUNC20(L, -2);          /* tie the metatable to the udata   (sp -= 1) */

	FUNC19(L, -2, "connection"); /* proxy.connection = <udata>     (sp -= 1) */

	/*
	 * proxy.response knows 3 fields with strict types:
	 *
	 * .type = <int>
	 * .errmsg = <string>
	 * .resultset = { 
	 *   fields = { 
	 *     { type = <int>, name = <string > }, 
	 *     { ... } }, 
	 *   rows = { 
	 *     { ..., ... }, 
	 *     { ..., ... } }
	 * }
	 */
	FUNC11(L);
#if 0
	lua_newtable(L); /* the meta-table for the response-table    (sp += 1) */
	lua_pushcfunction(L, response_get);                       /* (sp += 1) */
	lua_setfield(L, -2, "__index");                           /* (sp -= 1) */
	lua_pushcfunction(L, response_set);                       /* (sp += 1) */
	lua_setfield(L, -2, "__newindex");                        /* (sp -= 1) */
	lua_setmetatable(L, -2); /* tie the metatable to response    (sp -= 1) */
#endif
	FUNC19(L, -2, "response");

	FUNC19(L, -2, "__proxy");

	/* patch the _G.proxy to point here */
	FUNC6(L, "proxy");
	FUNC0(FUNC10(L, -1));

	if (0 == FUNC7(L, -1)) { /* meta(_G.proxy) */
		/* no metatable yet */

		FUNC11(L);
	}
	FUNC0(FUNC10(L, -1));

	FUNC5(L, -3, "__proxy"); /* fenv.__proxy */
	FUNC0(FUNC10(L, -1));
	FUNC19(L, -2, "__index"); /* meta[_G.proxy].__index = fenv.__proxy */

	FUNC5(L, -3, "__proxy"); /* fenv.__proxy */
	FUNC19(L, -2, "__newindex"); /* meta[_G.proxy].__newindex = fenv.__proxy */

	FUNC20(L, -2);

	FUNC15(L, 1);  /* _G.proxy */

	FUNC0(FUNC9(L, -2));
	FUNC0(FUNC10(L, -1));

	FUNC18(L, -2); /* on the stack should be a modified env (sp -= 1) */

	/* cache the script in this connection */
	FUNC0(FUNC9(L, -1));
	FUNC17(L, -1);

	/* run the script once to get the functions set in the global scope */
	if (FUNC14(L, 0, 0, 0) != 0) {
		FUNC1("(lua-error) [%s]\n%s", lua_script, FUNC21(L, -1));

		FUNC15(L, 1); /* errmsg */

		FUNC3(sc->L, LUA_REGISTRYINDEX, st->L_ref);

		return REGISTER_CALLBACK_EXECUTE_FAILED;
	}

	st->L = L;

	FUNC0(FUNC9(L, -1));
	FUNC0(FUNC8(L) - stack_top == 1);

	return REGISTER_CALLBACK_SUCCESS;
}