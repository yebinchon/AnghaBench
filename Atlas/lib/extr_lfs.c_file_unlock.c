
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ _file_lock (int *,int *,char*,long const,long,char*) ;
 int * check_file (int *,int,char*) ;
 int errno ;
 void* luaL_optlong (int *,int,int ) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int strerror (int ) ;

__attribute__((used)) static int file_unlock (lua_State *L) {
 FILE *fh = check_file (L, 1, "unlock");
 const long start = luaL_optlong (L, 2, 0);
 long len = luaL_optlong (L, 3, 0);
 if (_file_lock (L, fh, "u", start, len, "unlock")) {
  lua_pushboolean (L, 1);
  return 1;
 } else {
  lua_pushnil (L);
  lua_pushfstring (L, "%s", strerror(errno));
  return 2;
 }
}
