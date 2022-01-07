
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*,char const*) ;

__attribute__((used)) static FILE *check_file (lua_State *L, int idx, const char *funcname) {
 FILE **fh = (FILE **)luaL_checkudata (L, idx, "FILE*");
 if (fh == ((void*)0)) {
  luaL_error (L, "%s: not a file", funcname);
  return 0;
 } else if (*fh == ((void*)0)) {
  luaL_error (L, "%s: closed file", funcname);
  return 0;
 } else
  return *fh;
}
