
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ docall (int *,int ,int) ;
 scalar_t__ luaL_loadfile (int *,char const*) ;
 int report (int *,int) ;

__attribute__((used)) static int dofile (lua_State *L, const char *name) {
  int status = luaL_loadfile(L, name) || docall(L, 0, 1);
  return report(L, status);
}
