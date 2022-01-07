
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ chdir (char const*) ;
 int chdir_error ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,char const*,int ) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static int change_dir (lua_State *L) {
 const char *path = luaL_checkstring(L, 1);
 if (chdir(path)) {
  lua_pushnil (L);
  lua_pushfstring (L,"Unable to change working directory to '%s'\n%s\n",
    path, chdir_error);
  return 2;
 } else {
  lua_pushboolean (L, 1);
  return 1;
 }
}
