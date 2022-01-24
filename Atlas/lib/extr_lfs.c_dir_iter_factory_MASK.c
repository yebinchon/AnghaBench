#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {long hFile; int /*<<< orphan*/ * dir; int /*<<< orphan*/  pattern; scalar_t__ closed; } ;
typedef  TYPE_1__ dir_data ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_METATABLE ; 
 scalar_t__ MAX_DIR_LENGTH ; 
 int /*<<< orphan*/  dir_iter ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
	const char *path = FUNC0 (L, 1);
	dir_data *d = (dir_data *) FUNC3 (L, sizeof(dir_data));
	d->closed = 0;
#ifdef _WIN32
	d->hFile = 0L;
	luaL_getmetatable (L, DIR_METATABLE);
	lua_setmetatable (L, -2);
	if (strlen(path) > MAX_DIR_LENGTH)
		luaL_error (L, "path too long: %s", path);
	else
		sprintf (d->pattern, "%s/*", path);
#else
	FUNC2 (L, DIR_METATABLE);
	FUNC5 (L, -2);
	d->dir = FUNC6 (path);
	if (d->dir == NULL)
		FUNC1 (L, "cannot open %s: %s", path, FUNC8 (errno));
#endif
	FUNC4 (L, dir_iter, 1);
	return 1;
}