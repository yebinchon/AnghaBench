
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct utimbuf {void* actime; void* modtime; } ;
typedef int lua_State ;


 int errno ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_optnumber (int *,int,void*) ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int strerror (int ) ;
 scalar_t__ utime (char const*,struct utimbuf*) ;

__attribute__((used)) static int file_utime (lua_State *L) {
 const char *file = luaL_checkstring (L, 1);
 struct utimbuf utb, *buf;

 if (lua_gettop (L) == 1)
  buf = ((void*)0);
 else {
  utb.actime = (time_t)luaL_optnumber (L, 2, 0);
  utb.modtime = (time_t)luaL_optnumber (L, 3, utb.actime);
  buf = &utb;
 }
 if (utime (file, buf)) {
  lua_pushnil (L);
  lua_pushfstring (L, "%s", strerror (errno));
  return 2;
 }
 lua_pushboolean (L, 1);
 return 1;
}
