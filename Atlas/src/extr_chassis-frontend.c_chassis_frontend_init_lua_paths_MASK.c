#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t guint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  scalar_t__ gboolean ;
struct TYPE_6__ {scalar_t__ len; char const* str; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  G_STRLOC ; 
 char* LUA_CPATH ; 
 char* LUA_PATH ; 
 int /*<<< orphan*/  LUA_PATHSEP ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(const char *set_path,
		const char *base_dir, char **lua_subdirs,
		gboolean is_lua_path) {
	const char *env_var = is_lua_path ? LUA_PATH : LUA_CPATH;
	int ret = 0;

	if (set_path) {
		if (0 != FUNC3(env_var, set_path)) {
			FUNC4("%s: setting %s = %s failed: %s", G_STRLOC,
					env_var, set_path,
					FUNC7(errno));
			ret = -1;
		}
	} else if (!FUNC6(env_var)) {
		GString *lua_path = FUNC11(NULL);
		guint i;
		gboolean all_in_one_folder = FALSE;

#ifdef _WIN32
		/**
		 * call the get_default_lua_cpath() only once on win32 as it has
		 * all the lua-module-DLLs in one folder
		 */
		if (!is_lua_path) all_in_one_folder = TRUE;
#endif

		/* build a path for each sub_name */
		for (i = 0; (all_in_one_folder && i == 0) || (!all_in_one_folder && lua_subdirs[i] != NULL); i++) {
			gchar *path;
			const char *sub_name = all_in_one_folder ? NULL : lua_subdirs[i];

			if (is_lua_path) {
				path = FUNC2(base_dir, sub_name);
			} else {
				path = FUNC1(base_dir, sub_name);
			}

			if (lua_path->len > 0) {
				FUNC9(lua_path, FUNC0(LUA_PATHSEP));
			}

			FUNC8(lua_path, path);

			FUNC5(path);
		}

		if (lua_path->len) {
			if (FUNC3(env_var, lua_path->str)) {
				FUNC4("%s: setting %s = %s failed: %s", G_STRLOC,
						env_var, lua_path->str,
						FUNC7(errno));
				ret = -1;
			}
		}
		FUNC10(lua_path, TRUE);
	}

	return 0;
}