
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_OK ;
 int LUA_REGISTRYINDEX ;
 int collectargs (char**,int*) ;
 int createargtable (int *,char**,int,int) ;
 int doREPL (int *) ;
 int dofile (int *,int *) ;
 scalar_t__ handle_luainit (int *) ;
 scalar_t__ handle_script (int *,char**) ;
 int has_E ;
 int has_e ;
 int has_error ;
 int has_i ;
 int has_v ;
 int luaL_checkversion (int *) ;
 int luaL_openlibs (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_setfield (int *,int ,char*) ;
 scalar_t__ lua_stdin_is_tty () ;
 scalar_t__ lua_tointeger (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int print_usage (char*) ;
 int print_version () ;
 char* progname ;
 int runargs (int *,char**,int) ;

__attribute__((used)) static int pmain (lua_State *L) {
  int argc = (int)lua_tointeger(L, 1);
  char **argv = (char **)lua_touserdata(L, 2);
  int script;
  int args = collectargs(argv, &script);
  luaL_checkversion(L);
  if (argv[0] && argv[0][0]) progname = argv[0];
  if (args == has_error) {
    print_usage(argv[script]);
    return 0;
  }
  if (args & has_v)
    print_version();
  if (args & has_E) {
    lua_pushboolean(L, 1);
    lua_setfield(L, LUA_REGISTRYINDEX, "LUA_NOENV");
  }
  luaL_openlibs(L);
  createargtable(L, argv, argc, script);
  if (!(args & has_E)) {
    if (handle_luainit(L) != LUA_OK)
      return 0;
  }
  if (!runargs(L, argv, script))
    return 0;
  if (script < argc &&
      handle_script(L, argv + script) != LUA_OK)
    return 0;
  if (args & has_i)
    doREPL(L);
  else if (script == argc && !(args & (has_e | has_v))) {
    if (lua_stdin_is_tty()) {
      print_version();
      doREPL(L);
    }
    else dofile(L, ((void*)0));
  }
  lua_pushboolean(L, 1);
  return 1;
}
