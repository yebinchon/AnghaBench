
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TNUMBER ;
 int luaL_argerror (int *,int,char*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int tag_error (int *,int,int ) ;

__attribute__((used)) static void interror (lua_State *L, int arg) {
  if (lua_isnumber(L, arg))
    luaL_argerror(L, arg, "number has no integer representation");
  else
    tag_error(L, arg, LUA_TNUMBER);
}
