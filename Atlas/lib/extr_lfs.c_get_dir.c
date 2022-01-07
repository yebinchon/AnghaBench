
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int * getcwd (char*,int) ;
 char* getcwd_error ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;

__attribute__((used)) static int get_dir (lua_State *L) {
 char path[255+2];
 if (getcwd(path, 255) == ((void*)0)) {
  lua_pushnil(L);
  lua_pushstring(L, getcwd_error);
  return 2;
 }
 else {
  lua_pushstring(L, path);
  return 1;
 }
}
