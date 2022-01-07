
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,char const*) ;
 int lua_getfield (int *,int ,char const*) ;
 char* lua_tostring (int *,int) ;
 int lua_upvalueindex (int) ;
 char const* searchpath (int *,char const*,char const*,char*,char const*) ;

__attribute__((used)) static const char *findfile (lua_State *L, const char *name,
                                           const char *pname,
                                           const char *dirsep) {
  const char *path;
  lua_getfield(L, lua_upvalueindex(1), pname);
  path = lua_tostring(L, -1);
  if (path == ((void*)0))
    luaL_error(L, "'package.%s' must be a string", pname);
  return searchpath(L, name, path, ".", dirsep);
}
