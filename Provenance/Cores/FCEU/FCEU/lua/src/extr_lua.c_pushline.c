
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MAXINPUT ;
 char* get_prompt (int *,int) ;
 int lua_freeline (int *,char*) ;
 int lua_pushfstring (int *,char*,char*) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ lua_readline (int *,char*,char const*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int pushline (lua_State *L, int firstline) {
  char buffer[LUA_MAXINPUT];
  char *b = buffer;
  size_t l;
  const char *prmt = get_prompt(L, firstline);
  if (lua_readline(L, b, prmt) == 0)
    return 0;
  l = strlen(b);
  if (l > 0 && b[l-1] == '\n')
    b[l-1] = '\0';
  if (firstline && b[0] == '=')
    lua_pushfstring(L, "return %s", b+1);
  else
    lua_pushstring(L, b);
  lua_freeline(L, b);
  return 1;
}
