
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TFUNCTION ;
 int generic_reader ;
 int load_aux (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 char* luaL_optstring (int *,int,char*) ;
 int lua_load (int *,int ,int *,char const*) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int luaB_load (lua_State *L) {
  int status;
  const char *cname = luaL_optstring(L, 2, "=(load)");
  luaL_checktype(L, 1, LUA_TFUNCTION);
  lua_settop(L, 3);
  status = lua_load(L, generic_reader, ((void*)0), cname);
  return load_aux(L, status);
}
