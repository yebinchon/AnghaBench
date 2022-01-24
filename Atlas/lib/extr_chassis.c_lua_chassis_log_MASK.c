#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int currentline; char* source; char* short_src; } ;
typedef  TYPE_1__ lua_Debug ;
struct TYPE_6__ {scalar_t__ base_dir; } ;
typedef  TYPE_2__ chassis ;

/* Variables and functions */
 int /*<<< orphan*/  CHASSIS_LUA_REGISTRY_KEY ; 
 char const G_DIR_SEPARATOR ; 
 int /*<<< orphan*/  G_LOG_DOMAIN ; 
#define  G_LOG_LEVEL_CRITICAL 133 
#define  G_LOG_LEVEL_DEBUG 132 
#define  G_LOG_LEVEL_ERROR 131 
#define  G_LOG_LEVEL_INFO 130 
#define  G_LOG_LEVEL_MESSAGE 129 
#define  G_LOG_LEVEL_WARNING 128 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,char*,char const*,int,char const*) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*,char const* const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
    static const char *const log_names[] = {"error", "critical",
        "warning", "message", "info", "debug", NULL};
	static const int log_levels[] = {G_LOG_LEVEL_ERROR, G_LOG_LEVEL_CRITICAL,
        G_LOG_LEVEL_WARNING, G_LOG_LEVEL_MESSAGE,
        G_LOG_LEVEL_INFO, G_LOG_LEVEL_DEBUG};

    int option = FUNC2(L, 1, "message", log_names);
	const char *log_message = FUNC3(L, 2, "nil");
	const char *source = NULL;
	const char *first_source = "unknown";
	int currentline = -1;
	int first_line = -1;
	int stackdepth = 1;
	lua_Debug ar;
	chassis *chas;
	
	/* try to get some information about who logs this message */
	do {
		/* walk up the stack to try to find a file name */
        if (!FUNC6(L, stackdepth, &ar)) break;
        if (!FUNC5(L, "Sl", &ar)) break;

		currentline = ar.currentline;
        source = ar.source;
		/* save the first short_src we have encountered,
		   in case we exceed our max stackdepth to check
		 */
		if (stackdepth == 1) {
			first_source = ar.short_src;
			first_line = ar.currentline;
		}
		/* below: '@' comes from Lua's dofile, our lua-load-factory doesn't set it when we load a file. */
	} while (++stackdepth < 11 && source && source[0] != '/' && source[0] != '@'); /* limit walking the stack to a sensible value */

	if (source) {
		if (source[0] == '@') {
			/* skip Lua's "this is from a file" indicator */
			source++;
		}
        FUNC4(L, LUA_REGISTRYINDEX, CHASSIS_LUA_REGISTRY_KEY);
        chas = (chassis*) FUNC8(L, -1);
        FUNC7(L, 1);
        if (chas && chas->base_dir) {
            if (FUNC1(source, chas->base_dir)) {
                source += FUNC9(chas->base_dir);
                /* skip a leading dir separator */
                if (source[0] == G_DIR_SEPARATOR) source++;
            }
        }
	}
    FUNC0(G_LOG_DOMAIN, log_levels[option], "(%s:%d) %s", (source ? source : first_source),
			(source ? currentline : first_line), log_message);
	
	return 0;
}