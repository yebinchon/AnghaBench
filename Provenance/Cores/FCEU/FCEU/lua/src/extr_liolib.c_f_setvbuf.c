
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;
typedef int FILE ;


 int LUAL_BUFFERSIZE ;



 int luaL_checkoption (int *,int,int *,char const* const*) ;
 int luaL_optinteger (int *,int,int ) ;
 int pushresult (int *,int,int *) ;
 int setvbuf (int *,int *,int const,int ) ;
 int * tofile (int *) ;

__attribute__((used)) static int f_setvbuf (lua_State *L) {
  static const int mode[] = {128, 130, 129};
  static const char *const modenames[] = {"no", "full", "line", ((void*)0)};
  FILE *f = tofile(L);
  int op = luaL_checkoption(L, 2, ((void*)0), modenames);
  lua_Integer sz = luaL_optinteger(L, 3, LUAL_BUFFERSIZE);
  int res = setvbuf(f, ((void*)0), mode[op], sz);
  return pushresult(L, res == 0, ((void*)0));
}
