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
struct TYPE_4__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ lua_scope ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(lua_scope *sc, const char *lua_script) {
	int stack_top = FUNC3(sc->L);

	if (!lua_script) return -1;
	
	/* a script cache
	 *
	 * we cache the scripts globally in the registry and move a copy of it 
	 * to the new script scope on success.
	 */
	FUNC7(sc, lua_script);

	if (FUNC5(sc->L, -1)) {
		FUNC1("%s: lua_load_file(%s) failed: %s", 
				G_STRLOC, 
				lua_script, FUNC8(sc->L, -1));

		FUNC6(sc->L, 1); /* remove the error-msg from the stack */
		
		return -1;
	} else if (!FUNC4(sc->L, -1)) {
		FUNC2("%s: luaL_loadfile(%s): returned a %s", 
				G_STRLOC, 
				lua_script, FUNC10(sc->L, FUNC9(sc->L, -1)));
	}

	FUNC0(FUNC3(sc->L) - stack_top == 1);

	return 0;
}