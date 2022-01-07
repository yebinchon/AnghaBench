
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef size_t guint ;
typedef int gboolean ;
struct TYPE_5__ {char* name; int * stats; int * (* get_stats ) (int *) ;} ;
typedef TYPE_2__ chassis_plugin ;
struct TYPE_6__ {int stats; TYPE_1__* modules; } ;
typedef TYPE_3__ chassis ;
struct TYPE_4__ {size_t len; TYPE_2__** pdata; } ;
typedef int GHashTable ;


 int CHASSIS_LUA_REGISTRY_KEY ;
 int FALSE ;
 int LUA_REGISTRYINDEX ;
 int TRUE ;
 int * chassis_stats_get (int ) ;
 int chassis_stats_setluaval ;
 scalar_t__ g_ascii_strcasecmp (char const*,char*) ;
 int g_hash_table_destroy (int *) ;
 int g_hash_table_foreach (int *,int ,int *) ;
 int luaL_argerror (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setfield (int *,int,char*) ;
 scalar_t__ lua_topointer (int *,int) ;
 int * stub1 (int *) ;
 int * stub2 (int *) ;

__attribute__((used)) static int lua_chassis_stats(lua_State *L) {
    const char *plugin_name = ((void*)0);
    chassis *chas = ((void*)0);
    chassis_plugin *plugin = ((void*)0);
    guint i = 0;
    gboolean found_stats = FALSE;
    int nargs = lua_gettop(L);

    if (nargs == 0) {
        plugin_name = ((void*)0);
    } else if (nargs == 1) {
        plugin_name = luaL_checkstring(L, 1);
    } else {
        return luaL_argerror(L, 2, "currently only zero or one arguments are allowed");
    }
    lua_newtable(L);


    lua_getfield(L, LUA_REGISTRYINDEX, CHASSIS_LUA_REGISTRY_KEY);
    chas = (chassis*) lua_topointer(L, -1);
    lua_pop(L, 1);


    if (nargs == 0 && chas) {
        GHashTable *stats_hash = chassis_stats_get(chas->stats);
        if (stats_hash == ((void*)0)) {
            found_stats = FALSE;
        } else {
            found_stats = TRUE;

            lua_newtable(L);
            g_hash_table_foreach(stats_hash, chassis_stats_setluaval, L);
            lua_setfield(L, -2, "chassis");
            g_hash_table_destroy(stats_hash);
        }
    }

    if (chas && chas->modules) {
        for (i = 0; i < chas->modules->len; i++) {
            plugin = chas->modules->pdata[i];
            if (plugin->stats != ((void*)0) && plugin->get_stats != ((void*)0)) {
                GHashTable *stats_hash = ((void*)0);

                if (plugin_name == ((void*)0)) {

                    stats_hash = plugin->get_stats(plugin->stats);
                    if (stats_hash != ((void*)0)) {
                        found_stats = TRUE;
                    }

                    lua_newtable(L);
                    g_hash_table_foreach(stats_hash, chassis_stats_setluaval, L);
                    lua_setfield(L, -2, plugin->name);

                    g_hash_table_destroy(stats_hash);

                } else if (g_ascii_strcasecmp(plugin_name, "chassis") == 0) {

                    stats_hash = chassis_stats_get(chas->stats);
                    if (stats_hash == ((void*)0)) {
                        found_stats = FALSE;
                        break;
                    }
                    found_stats = TRUE;

                    g_hash_table_foreach(stats_hash, chassis_stats_setluaval, L);
                    g_hash_table_destroy(stats_hash);
                    break;
                } else if (g_ascii_strcasecmp(plugin_name, plugin->name) == 0) {

                    stats_hash = plugin->get_stats(plugin->stats);
                    if (stats_hash == ((void*)0)) {
                        found_stats = FALSE;
                        break;
                    }
                    found_stats = TRUE;


                    g_hash_table_foreach(stats_hash, chassis_stats_setluaval, L);
                    g_hash_table_destroy(stats_hash);
                    break;
                }
            }
        }
    }

    if (!found_stats) {
        lua_pop(L, 1);
        lua_pushnil(L);
        return 1;
    }
    return 1;
}
