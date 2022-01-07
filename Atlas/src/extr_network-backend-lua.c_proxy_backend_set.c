
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uuid; int state; } ;
typedef TYPE_1__ network_backend_t ;
typedef int lua_State ;
typedef int gsize ;


 int C (char*) ;
 int g_string_assign_len (int ,char const*,size_t) ;
 int g_string_truncate (int ,int ) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_backend_set(lua_State *L) {
 network_backend_t *backend = *(network_backend_t **)luaL_checkself(L);
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 if (strleq(key, keysize, C("state"))) {
  backend->state = lua_tointeger(L, -1);
 } else if (strleq(key, keysize, C("uuid"))) {
  if (lua_isstring(L, -1)) {
   size_t s_len = 0;
   const char *s = lua_tolstring(L, -1, &s_len);

   g_string_assign_len(backend->uuid, s, s_len);
  } else if (lua_isnil(L, -1)) {
   g_string_truncate(backend->uuid, 0);
  } else {
   return luaL_error(L, "proxy.global.backends[...].%s has to be a string", key);
  }
 } else {
  return luaL_error(L, "proxy.global.backends[...].%s is not writable", key);
 }
 return 1;
}
