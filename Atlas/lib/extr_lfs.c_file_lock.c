
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ _file_lock (int *,int *,char const*,long const,long,char*) ;
 int * check_file (int *,int,char*) ;
 int errno ;
 char* luaL_checkstring (int *,int) ;
 void* luaL_optlong (int *,int,int ) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int strerror (int ) ;

__attribute__((used)) static int file_lock (lua_State *L) {
 FILE *fh = check_file (L, 1, "lock");
 const char *mode = luaL_checkstring (L, 2);
 const long start = luaL_optlong (L, 3, 0);
 long len = luaL_optlong (L, 4, 0);
 if (_file_lock (L, fh, mode, start, len, "lock")) {
  lua_pushboolean (L, 1);
  return 1;
 } else {
  lua_pushnil (L);
  lua_pushfstring (L, "%s", strerror(errno));
  return 2;
 }
}
