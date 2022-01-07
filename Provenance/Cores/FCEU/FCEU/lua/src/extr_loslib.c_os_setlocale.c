
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
 int luaL_checkoption (int *,int,char*,char const* const*) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_pushstring (int *,int ) ;
 int setlocale (int const,char const*) ;

__attribute__((used)) static int os_setlocale (lua_State *L) {
  static const int cat[] = {133, 132, 131, 130,
                      129, 128};
  static const char *const catnames[] = {"all", "collate", "ctype", "monetary",
     "numeric", "time", ((void*)0)};
  const char *l = luaL_optstring(L, 1, ((void*)0));
  int op = luaL_checkoption(L, 2, "all", catnames);
  lua_pushstring(L, setlocale(cat[op], l));
  return 1;
}
