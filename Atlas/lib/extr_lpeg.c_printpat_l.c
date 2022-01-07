
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int * getpatt (int *,int,int *) ;
 int lua_getfenv (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 char* lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 char* lua_typename (int *,int ) ;
 int printf (char*,...) ;
 int printpatt (int *) ;

__attribute__((used)) static int printpat_l (lua_State *L) {
  Instruction *p = getpatt(L, 1, ((void*)0));
  int n, i;
  lua_getfenv(L, 1);
  n = lua_objlen(L, -1);
  printf("[");
  for (i = 1; i <= n; i++) {
    printf("%d = ", i);
    lua_rawgeti(L, -1, i);
    if (lua_isstring(L, -1))
      printf("%s  ", lua_tostring(L, -1));
    else
      printf("%s  ", lua_typename(L, lua_type(L, -1)));
    lua_pop(L, 1);
  }
  printf("]\n");
  printpatt(p);
  return 0;
}
