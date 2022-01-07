
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hookmask; scalar_t__ top; int savedpc; int base; int ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_7__ {scalar_t__ func; int nresults; int savedpc; int base; } ;
typedef scalar_t__ StkId ;
typedef TYPE_2__ CallInfo ;


 int LUA_MASKRET ;
 int LUA_MULTRET ;
 scalar_t__ callrethooks (TYPE_1__*,scalar_t__) ;
 int setnilvalue (int ) ;
 int setobjs2s (TYPE_1__*,int ,int ) ;

int luaD_poscall (lua_State *L, StkId firstResult) {
  StkId res;
  int wanted, i;
  CallInfo *ci;
  if (L->hookmask & LUA_MASKRET)
    firstResult = callrethooks(L, firstResult);
  ci = L->ci--;
  res = ci->func;
  wanted = ci->nresults;
  L->base = (ci - 1)->base;
  L->savedpc = (ci - 1)->savedpc;

  for (i = wanted; i != 0 && firstResult < L->top; i--)
    setobjs2s(L, res++, firstResult++);
  while (i-- > 0)
    setnilvalue(res++);
  L->top = res;
  return (wanted - LUA_MULTRET);
}
