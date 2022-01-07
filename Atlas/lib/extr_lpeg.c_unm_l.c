
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int diff_l (int *) ;
 int lua_insert (int *,int) ;
 int lua_pushliteral (int *,char*) ;

__attribute__((used)) static int unm_l (lua_State *L) {
  lua_pushliteral(L, "");
  lua_insert(L, 1);
  return diff_l(L);
}
