
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int newpattfunc (int *,int ,char const*,scalar_t__) ;
 int span ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int span_l (lua_State *L) {
  const char *s = luaL_checkstring(L, 1);
  newpattfunc(L, span, s, strlen(s) + 1);
  return 1;
}
