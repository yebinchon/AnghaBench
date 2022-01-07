
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int,int ) ;
 scalar_t__ lua_equal (int *,int,int) ;
 int lua_getfenv (int *,int) ;
 int lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setfenv (int *,int) ;

__attribute__((used)) static int jointable (lua_State *L, int p1) {
  int n, n1, i;
  lua_getfenv(L, p1);
  n1 = lua_objlen(L, -1);
  lua_getfenv(L, -2);
  if (n1 == 0 || lua_equal(L, -2, -1)) {
    lua_pop(L, 2);
    return 0;
  }
  n = lua_objlen(L, -1);
  if (n == 0) {
    lua_pop(L, 1);
    lua_setfenv(L, -2);
    return 0;
  }
  lua_createtable(L, n + n1, 0);

  for (i = 1; i <= n; i++) {
    lua_rawgeti(L, -2, i);
    lua_rawseti(L, -2, i);
  }
  for (i = 1; i <= n1; i++) {
    lua_rawgeti(L, -3, i);
    lua_rawseti(L, -2, n + i);
  }
  lua_setfenv(L, -4);
  lua_pop(L, 2);
  return n;
}
