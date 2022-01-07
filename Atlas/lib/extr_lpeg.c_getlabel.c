
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int value2fenv (int *,int) ;

__attribute__((used)) static int getlabel (lua_State *L, int labelidx) {
  if (labelidx == 0) return 0;
  else return value2fenv(L, labelidx);
}
