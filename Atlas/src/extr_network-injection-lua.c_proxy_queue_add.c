
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int proxy_queue_add_t ;
typedef int lua_State ;
struct TYPE_5__ {int resultset_is_needed; } ;
typedef TYPE_1__ injection ;
typedef int GString ;
typedef int GQueue ;


 int FALSE ;


 int g_assert_not_reached () ;
 int g_string_append_len (int *,char const*,size_t) ;
 int * g_string_sized_new (size_t) ;
 TYPE_1__* injection_new (int,int *) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_opt (int *,int ,int,int) ;
 int luaL_typerror (int *,int,char*) ;
 int lua_getfield (int *,int,char*) ;
 int lua_isboolean (int *,int) ;
 int lua_isnil (int *,int) ;
 int lua_istable ;
 int lua_pop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int network_injection_queue_append (int *,TYPE_1__*) ;
 int network_injection_queue_prepend (int *,TYPE_1__*) ;
 int proxy_lua_dumpstack_verbose (int *) ;

__attribute__((used)) static int proxy_queue_add(lua_State *L, proxy_queue_add_t type) {
 GQueue *q = *(GQueue **)luaL_checkself(L);
 int resp_type = luaL_checkinteger(L, 2);
 size_t str_len;
 const char *str = luaL_checklstring(L, 3, &str_len);
 injection *inj;

 GString *query = g_string_sized_new(str_len);
 g_string_append_len(query, str, str_len);

 inj = injection_new(resp_type, query);
 inj->resultset_is_needed = FALSE;


 switch (luaL_opt(L, lua_istable, 4, -1)) {
 case -1:

  break;
 case 1:
  lua_getfield(L, 4, "resultset_is_needed");
  if (lua_isnil(L, -1)) {

  } else if (lua_isboolean(L, -1)) {
   inj->resultset_is_needed = lua_toboolean(L, -1);
  } else {
   switch (type) {
   case 129:
    return luaL_argerror(L, 4, ":append(..., { resultset_is_needed = boolean } ), is %s");
   case 128:
    return luaL_argerror(L, 4, ":prepend(..., { resultset_is_needed = boolean } ), is %s");
   }
  }

  lua_pop(L, 1);
  break;
 default:
  proxy_lua_dumpstack_verbose(L);
  luaL_typerror(L, 4, "table");
  break;
 }

 switch (type) {
 case 129:
  network_injection_queue_append(q, inj);
  return 0;
 case 128:
  network_injection_queue_prepend(q, inj);
  return 0;
 }

 g_assert_not_reached();
}
