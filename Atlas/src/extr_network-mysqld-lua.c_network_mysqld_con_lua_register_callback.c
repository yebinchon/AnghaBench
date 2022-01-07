
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int network_mysqld_register_callback_ret ;
struct TYPE_8__ {int * queries; } ;
struct TYPE_9__ {int * L; int L_ref; TYPE_1__ injected; } ;
typedef TYPE_2__ network_mysqld_con_lua_t ;
struct TYPE_10__ {TYPE_5__* srv; TYPE_2__* plugin_con_state; } ;
typedef TYPE_3__ network_mysqld_con ;
struct TYPE_11__ {int L; } ;
typedef TYPE_4__ lua_scope ;
typedef int lua_State ;
typedef int con ;
struct TYPE_12__ {TYPE_4__* sc; } ;
typedef int GQueue ;


 int LUA_GLOBALSINDEX ;
 int LUA_REGISTRYINDEX ;
 int REGISTER_CALLBACK_EXECUTE_FAILED ;
 int REGISTER_CALLBACK_LOAD_FAILED ;
 int REGISTER_CALLBACK_SUCCESS ;
 int g_assert (int) ;
 int g_critical (char*,char const*,int ) ;
 int luaL_ref (int ,int ) ;
 int luaL_unref (int ,int ,int ) ;
 int lua_getfenv (int *,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_gettop (int *) ;
 int lua_isfunction (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 int * lua_newthread (int ) ;
 void* lua_newuserdata (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int ,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfenv (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_xmove (int ,int *,int) ;
 int network_mysqld_con_getmetatable (int *) ;
 scalar_t__ network_mysqld_lua_load_script (TYPE_4__*,char const*) ;
 int network_mysqld_lua_setup_global (int ,TYPE_5__*) ;
 int proxy_getqueuemetatable (int *) ;
 int response_get ;
 int response_set ;

network_mysqld_register_callback_ret network_mysqld_con_lua_register_callback(network_mysqld_con *con, const char *lua_script) {
 lua_State *L = ((void*)0);
 network_mysqld_con_lua_t *st = con->plugin_con_state;

 lua_scope *sc = con->srv->sc;

 GQueue **q_p;
 network_mysqld_con **con_p;
 int stack_top;

 if (!lua_script) return REGISTER_CALLBACK_SUCCESS;

 if (st->L) {

  L = st->L;

  g_assert(lua_isfunction(L, -1));

  lua_getfenv(L, -1);
  g_assert(lua_istable(L, -1));

  lua_getglobal(L, "proxy");
  lua_getmetatable(L, -1);

  lua_getfield(L, -3, "__proxy");
  lua_setfield(L, -2, "__index");

  lua_getfield(L, -3, "__proxy");
  lua_setfield(L, -2, "__newindex");

  lua_pop(L, 3);

  g_assert(lua_isfunction(L, -1));

  return REGISTER_CALLBACK_SUCCESS;
 }


 if (0 != network_mysqld_lua_load_script(sc, lua_script)) {

  return REGISTER_CALLBACK_LOAD_FAILED;
 }


 network_mysqld_lua_setup_global(sc->L, con->srv);






 L = lua_newthread(sc->L);

 st->L_ref = luaL_ref(sc->L, LUA_REGISTRYINDEX);

 stack_top = lua_gettop(L);


 lua_xmove(sc->L, L, 1);
 g_assert(lua_isfunction(L, -1));

 lua_newtable(L);

 lua_newtable(L);

 lua_pushvalue(L, LUA_GLOBALSINDEX);
 lua_setfield(L, -2, "__index");
 lua_setmetatable(L, -2);

 lua_newtable(L);

 g_assert(lua_istable(L, -1));

 q_p = lua_newuserdata(L, sizeof(GQueue *));
 *q_p = st->injected.queries;
 proxy_getqueuemetatable(L);

 lua_pushvalue(L, -1);
 lua_setfield(L, -2, "__index");

 lua_setmetatable(L, -2);


 lua_setfield(L, -2, "queries");
 con_p = lua_newuserdata(L, sizeof(con));
 *con_p = con;

 network_mysqld_con_getmetatable(L);
 lua_setmetatable(L, -2);

 lua_setfield(L, -2, "connection");
 lua_newtable(L);
 lua_setfield(L, -2, "response");

 lua_setfield(L, -2, "__proxy");


 lua_getglobal(L, "proxy");
 g_assert(lua_istable(L, -1));

 if (0 == lua_getmetatable(L, -1)) {


  lua_newtable(L);
 }
 g_assert(lua_istable(L, -1));

 lua_getfield(L, -3, "__proxy");
 g_assert(lua_istable(L, -1));
 lua_setfield(L, -2, "__index");

 lua_getfield(L, -3, "__proxy");
 lua_setfield(L, -2, "__newindex");

 lua_setmetatable(L, -2);

 lua_pop(L, 1);

 g_assert(lua_isfunction(L, -2));
 g_assert(lua_istable(L, -1));

 lua_setfenv(L, -2);


 g_assert(lua_isfunction(L, -1));
 lua_pushvalue(L, -1);


 if (lua_pcall(L, 0, 0, 0) != 0) {
  g_critical("(lua-error) [%s]\n%s", lua_script, lua_tostring(L, -1));

  lua_pop(L, 1);

  luaL_unref(sc->L, LUA_REGISTRYINDEX, st->L_ref);

  return REGISTER_CALLBACK_EXECUTE_FAILED;
 }

 st->L = L;

 g_assert(lua_isfunction(L, -1));
 g_assert(lua_gettop(L) - stack_top == 1);

 return REGISTER_CALLBACK_SUCCESS;
}
