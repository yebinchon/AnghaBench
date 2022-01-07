
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int IO_INPUT ;
 int LUA_ENVIRONINDEX ;
 int aux_lines (int *,int ,int) ;
 int f_lines (int *) ;
 int fileerror (int *,int,char const*) ;
 int * fopen (char const*,char*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_rawgeti (int *,int ,int ) ;
 int ** newfile (int *) ;

__attribute__((used)) static int io_lines (lua_State *L) {
  if (lua_isnoneornil(L, 1)) {

    lua_rawgeti(L, LUA_ENVIRONINDEX, IO_INPUT);
    return f_lines(L);
  }
  else {
    const char *filename = luaL_checkstring(L, 1);
    FILE **pf = newfile(L);
    *pf = fopen(filename, "r");
    if (*pf == ((void*)0))
      fileerror(L, 1, filename);
    aux_lines(L, lua_gettop(L), 1);
    return 1;
  }
}
