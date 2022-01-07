
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int lua_pushfstring (int *,char*,int *) ;
 int lua_pushliteral (int *,char*) ;
 int ** tofilep (int *) ;

__attribute__((used)) static int io_tostring (lua_State *L) {
  FILE *f = *tofilep(L);
  if (f == ((void*)0))
    lua_pushliteral(L, "file (closed)");
  else
    lua_pushfstring(L, "file (%p)", f);
  return 1;
}
