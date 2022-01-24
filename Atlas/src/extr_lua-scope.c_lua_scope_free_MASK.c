#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ lua_scope ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(lua_scope *sc) {
	if (!sc) return;

#ifdef HAVE_LUA_H
	/**
	 * enforce that the stack is clean
	 *
	 * we still have items on the stack
	 */
	if (lua_gettop(sc->L) != 0) {
		g_critical("%s: lua-scope has %d items on the stack", 
				G_STRLOC,
				lua_gettop(sc->L));
	}

	/* FIXME: we might want to cleanup the cached-scripts in the registry */

	lua_close(sc->L);
#endif
	FUNC2(sc->mutex);	/*remove lock*/

	FUNC1(sc);
}