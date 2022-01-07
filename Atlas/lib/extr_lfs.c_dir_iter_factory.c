
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {long hFile; int * dir; int pattern; scalar_t__ closed; } ;
typedef TYPE_1__ dir_data ;


 int DIR_METATABLE ;
 scalar_t__ MAX_DIR_LENGTH ;
 int dir_iter ;
 int errno ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*,...) ;
 int luaL_getmetatable (int *,int ) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_setmetatable (int *,int) ;
 int * opendir (char const*) ;
 int sprintf (int ,char*,char const*) ;
 int strerror (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int dir_iter_factory (lua_State *L) {
 const char *path = luaL_checkstring (L, 1);
 dir_data *d = (dir_data *) lua_newuserdata (L, sizeof(dir_data));
 d->closed = 0;
 luaL_getmetatable (L, DIR_METATABLE);
 lua_setmetatable (L, -2);
 d->dir = opendir (path);
 if (d->dir == ((void*)0))
  luaL_error (L, "cannot open %s: %s", path, strerror (errno));

 lua_pushcclosure (L, dir_iter, 1);
 return 1;
}
