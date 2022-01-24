#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  size_t guint ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {char* name; int /*<<< orphan*/ * stats; int /*<<< orphan*/ * (* get_stats ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ chassis_plugin ;
struct TYPE_6__ {int /*<<< orphan*/  stats; TYPE_1__* modules; } ;
typedef  TYPE_3__ chassis ;
struct TYPE_4__ {size_t len; TYPE_2__** pdata; } ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  CHASSIS_LUA_REGISTRY_KEY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chassis_stats_setluaval ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(lua_State *L) {
    const char *plugin_name = NULL;
    chassis *chas = NULL;
    chassis_plugin *plugin = NULL;
    guint i = 0;
    gboolean found_stats = FALSE;
    int nargs = FUNC7(L);

    if (nargs == 0) {
        plugin_name = NULL;
    } else if (nargs == 1) {        /* grab only the stats we were asked to fetch */
        plugin_name = FUNC5(L, 1);
    } else {
        return FUNC4(L, 2, "currently only zero or one arguments are allowed");
    }
    FUNC8(L);    /* the table for the stats, either containing sub tables or the stats for the single plugin requested */

    /* retrieve the chassis stored in the registry */
    FUNC6(L, LUA_REGISTRYINDEX, CHASSIS_LUA_REGISTRY_KEY);
    chas = (chassis*) FUNC12(L, -1);
    FUNC9(L, 1);

    /* get the global chassis stats */
    if (nargs == 0 && chas) {
        GHashTable *stats_hash = FUNC0(chas->stats);
        if (stats_hash == NULL) {
            found_stats = FALSE;
        } else {
            found_stats = TRUE;

            FUNC8(L);
            FUNC3(stats_hash, chassis_stats_setluaval, L);
            FUNC11(L, -2, "chassis");
            FUNC2(stats_hash);
        }
    }

    if (chas && chas->modules) {
        for (i = 0; i < chas->modules->len; i++) {
            plugin = chas->modules->pdata[i];
            if (plugin->stats != NULL && plugin->get_stats != NULL) {
                GHashTable *stats_hash = NULL;
                
                if (plugin_name == NULL) {
                    /* grab all stats and key them by plugin name */
                    stats_hash = plugin->get_stats(plugin->stats);
                    if (stats_hash != NULL) {
                        found_stats = TRUE;
                    }
                    /* the per-plugin table */
                    FUNC8(L);
                    FUNC3(stats_hash, chassis_stats_setluaval, L);
                    FUNC11(L, -2, plugin->name);
                    
                    FUNC2(stats_hash);
                    
                } else if (FUNC1(plugin_name, "chassis") == 0) {
                  /* get the global chassis stats */
                    stats_hash = FUNC0(chas->stats);
                    if (stats_hash == NULL) {
                        found_stats = FALSE;
                        break;
                    }
                    found_stats = TRUE;

                    FUNC3(stats_hash, chassis_stats_setluaval, L);
                    FUNC2(stats_hash);
                    break;
                } else if (FUNC1(plugin_name, plugin->name) == 0) {
                    /* check for the correct name and get the stats */
                    stats_hash = plugin->get_stats(plugin->stats);
                    if (stats_hash == NULL) {
                        found_stats = FALSE;
                        break;
                    }
                    found_stats = TRUE;
                    
                    /* the table to use is already on the stack */
                    FUNC3(stats_hash, chassis_stats_setluaval, L);
                    FUNC2(stats_hash);
                    break;
                }
            }
        }
    }
    /* can also be FALSE if we couldn't find the chassis */
    if (!found_stats) {
        FUNC9(L, 1);  /* pop the unused stats table */
        FUNC10(L);
        return 1;
    }
    return 1;
}