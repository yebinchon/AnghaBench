
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int DIR_METATABLE ;
 int dir_close ;
 int luaL_newmetatable (int *,int ) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static int dir_create_meta (lua_State *L) {
 luaL_newmetatable (L, DIR_METATABLE);

 lua_pushstring (L, "__gc");
 lua_pushcfunction (L, dir_close);
 lua_settable (L, -3);

 return 1;
}
