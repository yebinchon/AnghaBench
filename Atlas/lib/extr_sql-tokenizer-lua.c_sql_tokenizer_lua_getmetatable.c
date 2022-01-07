
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luaL_reg {char* member_0; int * member_1; } ;
typedef int lua_State ;


 int proxy_getmetatable (int *,struct luaL_reg const*) ;





__attribute__((used)) static int sql_tokenizer_lua_getmetatable(lua_State *L) {
 static const struct luaL_reg methods[] = {
  { "__index", 130 },
  { "__newindex", 128 },
  { "__len", 129 },
  { "__gc", 131 },
  { ((void*)0), ((void*)0) },
 };
 return proxy_getmetatable(L, methods);
}
