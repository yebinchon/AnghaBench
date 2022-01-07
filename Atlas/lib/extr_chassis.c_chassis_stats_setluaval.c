
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int guint ;
typedef void* gpointer ;
typedef int gchar ;


 int GPOINTER_TO_UINT (void*) ;
 int g_assert (int ) ;
 int lua_checkstack (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pushinteger (int *,int const) ;
 int lua_pushstring (int *,int const*) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static void chassis_stats_setluaval(gpointer key, gpointer val, gpointer userdata) {
    const gchar *name = key;
    const guint value = GPOINTER_TO_UINT(val);
    lua_State *L = userdata;

    g_assert(lua_istable(L, -1));
    lua_checkstack(L, 2);

    lua_pushstring(L, name);
    lua_pushinteger(L, value);
    lua_settable(L, -3);
}
