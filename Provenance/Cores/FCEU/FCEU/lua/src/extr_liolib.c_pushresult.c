
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int errno ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,char const*,...) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int strerror (int) ;

__attribute__((used)) static int pushresult (lua_State *L, int i, const char *filename) {
  int en = errno;
  if (i) {
    lua_pushboolean(L, 1);
    return 1;
  }
  else {
    lua_pushnil(L);
    if (filename)
      lua_pushfstring(L, "%s: %s", filename, strerror(en));
    else
      lua_pushfstring(L, "%s", strerror(en));
    lua_pushinteger(L, en);
    return 3;
  }
}
