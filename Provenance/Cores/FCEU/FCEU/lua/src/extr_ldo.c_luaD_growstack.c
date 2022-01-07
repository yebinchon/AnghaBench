
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stacksize; } ;
typedef TYPE_1__ lua_State ;


 int luaD_reallocstack (TYPE_1__*,int) ;

void luaD_growstack (lua_State *L, int n) {
  if (n <= L->stacksize)
    luaD_reallocstack(L, 2*L->stacksize);
  else
    luaD_reallocstack(L, L->stacksize + n);
}
