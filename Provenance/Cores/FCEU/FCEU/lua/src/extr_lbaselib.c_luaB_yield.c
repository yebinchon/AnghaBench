
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_gettop (int *) ;
 int lua_yield (int *,int ) ;

__attribute__((used)) static int luaB_yield (lua_State *L) {
  return lua_yield(L, lua_gettop(L));
}
