
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int StkId ;


 int luaG_typeerror (int *,int ,char*) ;
 int lua_assert (int) ;
 scalar_t__ ttisnumber (int ) ;
 scalar_t__ ttisstring (int ) ;

void luaG_concaterror (lua_State *L, StkId p1, StkId p2) {
  if (ttisstring(p1) || ttisnumber(p1)) p1 = p2;
  lua_assert(!ttisstring(p1) && !ttisnumber(p1));
  luaG_typeerror(L, p1, "concatenate");
}
