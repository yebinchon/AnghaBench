
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ERRLIB ;
 char* LIB_FAIL ;
 int lookforfunc (int *,char const*,char const*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_insert (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;

__attribute__((used)) static int ll_loadlib (lua_State *L) {
  const char *path = luaL_checkstring(L, 1);
  const char *init = luaL_checkstring(L, 2);
  int stat = lookforfunc(L, path, init);
  if (stat == 0)
    return 1;
  else {
    lua_pushnil(L);
    lua_insert(L, -2);
    lua_pushstring(L, (stat == ERRLIB) ? LIB_FAIL : "init");
    return 3;
  }
}
