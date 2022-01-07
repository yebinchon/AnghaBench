
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L; } ;
typedef TYPE_1__ lua_scope ;


 int G_STRLOC ;
 int g_assert (int) ;
 int g_critical (char*,int ,char const*,int ) ;
 int g_error (char*,int ,char const*,int ) ;
 int lua_gettop (int ) ;
 int lua_isfunction (int ,int) ;
 scalar_t__ lua_isstring (int ,int) ;
 int lua_pop (int ,int) ;
 int lua_scope_load_script (TYPE_1__*,char const*) ;
 int lua_tostring (int ,int) ;
 int lua_type (int ,int) ;
 int lua_typename (int ,int ) ;

int network_mysqld_lua_load_script(lua_scope *sc, const char *lua_script) {
 int stack_top = lua_gettop(sc->L);

 if (!lua_script) return -1;






 lua_scope_load_script(sc, lua_script);

 if (lua_isstring(sc->L, -1)) {
  g_critical("%s: lua_load_file(%s) failed: %s",
    G_STRLOC,
    lua_script, lua_tostring(sc->L, -1));

  lua_pop(sc->L, 1);

  return -1;
 } else if (!lua_isfunction(sc->L, -1)) {
  g_error("%s: luaL_loadfile(%s): returned a %s",
    G_STRLOC,
    lua_script, lua_typename(sc->L, lua_type(sc->L, -1)));
 }

 g_assert(lua_gettop(sc->L) - stack_top == 1);

 return 0;
}
