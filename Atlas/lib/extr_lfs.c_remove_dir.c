
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int errno ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int rmdir (char const*) ;
 int strerror (int ) ;

__attribute__((used)) static int remove_dir (lua_State *L) {
 const char *path = luaL_checkstring (L, 1);
 int fail;

 fail = rmdir (path);

 if (fail) {
  lua_pushnil (L);
  lua_pushfstring (L, "%s", strerror(errno));
  return 2;
 }
 lua_pushboolean (L, 1);
 return 1;
}
