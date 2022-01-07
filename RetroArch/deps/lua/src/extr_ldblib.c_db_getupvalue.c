
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int auxupvalue (int *,int) ;

__attribute__((used)) static int db_getupvalue (lua_State *L) {
  return auxupvalue(L, 1);
}
