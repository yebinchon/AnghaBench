#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_4__ {int /*<<< orphan*/  event_thread_count; int /*<<< orphan*/  backends; TYPE_3__* sc; } ;
typedef  TYPE_1__ chassis ;
struct TYPE_5__ {int /*<<< orphan*/ * L; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHASSIS_LUA_REGISTRY_KEY ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(chassis *srv, gchar *default_file) {
	/* store the pointer to the chassis in the Lua registry */
	srv->sc = FUNC1();
	lua_State *L = srv->sc->L;
	FUNC0(L, (void*)srv);
	FUNC2(L, LUA_REGISTRYINDEX, CHASSIS_LUA_REGISTRY_KEY);

	srv->backends = FUNC3(srv->event_thread_count, default_file);

	return 0;
}