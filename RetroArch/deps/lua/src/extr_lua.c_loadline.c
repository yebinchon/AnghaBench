
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int addreturn (int *) ;
 int lua_assert (int) ;
 int lua_gettop (int *) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int ) ;
 int multiline (int *) ;
 int pushline (int *,int) ;

__attribute__((used)) static int loadline (lua_State *L) {
  int status;
  lua_settop(L, 0);
  if (!pushline(L, 1))
    return -1;
  if ((status = addreturn(L)) != LUA_OK)
    status = multiline(L);
  lua_remove(L, 1);
  lua_assert(lua_gettop(L) == 1);
  return status;
}
