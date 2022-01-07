
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;





 int fseek (int *,long,int const) ;
 int ftell (int *) ;
 int luaL_checkoption (int *,int,char*,char const* const*) ;
 long luaL_optlong (int *,int,int ) ;
 int lua_pushinteger (int *,int ) ;
 int pushresult (int *,int ,int *) ;
 int * tofile (int *) ;

__attribute__((used)) static int f_seek (lua_State *L) {
  static const int mode[] = {128, 130, 129};
  static const char *const modenames[] = {"set", "cur", "end", ((void*)0)};
  FILE *f = tofile(L);
  int op = luaL_checkoption(L, 2, "cur", modenames);
  long offset = luaL_optlong(L, 3, 0);
  op = fseek(f, offset, mode[op]);
  if (op)
    return pushresult(L, 0, ((void*)0));
  else {
    lua_pushinteger(L, ftell(f));
    return 1;
  }
}
