
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int lua_State ;
typedef int lua_Number ;


 scalar_t__ difftime (int ,int ) ;
 int l_checktime (int *,int) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static int os_difftime (lua_State *L) {
  time_t t1 = l_checktime(L, 1);
  time_t t2 = l_checktime(L, 2);
  lua_pushnumber(L, (lua_Number)difftime(t1, t2));
  return 1;
}
