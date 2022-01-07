
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;
typedef int luaL_Buffer ;


 int luaL_addvalue (int *) ;
 int luaL_error (int *,char*,int ,int ) ;
 int luaL_typename (int *,int) ;
 int lua_geti (int *,int,int ) ;
 int lua_isstring (int *,int) ;

__attribute__((used)) static void addfield (lua_State *L, luaL_Buffer *b, lua_Integer i) {
  lua_geti(L, 1, i);
  if (!lua_isstring(L, -1))
    luaL_error(L, "invalid value (%s) at index %d in table for 'concat'",
                  luaL_typename(L, -1), i);
  luaL_addvalue(b);
}
