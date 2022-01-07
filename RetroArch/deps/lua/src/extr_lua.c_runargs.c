
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int dolibrary (int *,char const*) ;
 int dostring (int *,char const*,char*) ;
 int lua_assert (int) ;

__attribute__((used)) static int runargs (lua_State *L, char **argv, int n) {
  int i;
  for (i = 1; i < n; i++) {
    int option = argv[i][1];
    lua_assert(argv[i][0] == '-');
    if (option == 'e' || option == 'l') {
      int status;
      const char *extra = argv[i] + 2;
      if (*extra == '\0') extra = argv[++i];
      lua_assert(extra != ((void*)0));
      status = (option == 'e')
               ? dostring(L, extra, "=(command line)")
               : dolibrary(L, extra);
      if (status != LUA_OK) return 0;
    }
  }
  return 1;
}
