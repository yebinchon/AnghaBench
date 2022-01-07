
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int docall (int *,int,int) ;
 int lua_getglobal (int *,char*) ;
 int lua_pushstring (int *,char const*) ;
 int report (int *,int ) ;

__attribute__((used)) static int dolibrary (lua_State *L, const char *name) {
  lua_getglobal(L, "require");
  lua_pushstring(L, name);
  return report(L, docall(L, 1, 1));
}
