
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_writeline () ;
 int lua_writestring (char const*,size_t) ;

__attribute__((used)) static int luaB_print (lua_State *L) {
  int n = lua_gettop(L);
  int i;
  lua_getglobal(L, "tostring");
  for (i=1; i<=n; i++) {
    const char *s;
    size_t l;
    lua_pushvalue(L, -1);
    lua_pushvalue(L, i);
    lua_call(L, 1, 1);
    s = lua_tolstring(L, -1, &l);
    if (s == ((void*)0))
      return luaL_error(L, "'tostring' must return a string to 'print'");
    if (i>1) lua_writestring("\t", 1);
    lua_writestring(s, l);
    lua_pop(L, 1);
  }
  lua_writeline();
  return 0;
}
