
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hookmask; scalar_t__ hookcount; int ci; int const* savedpc; } ;
typedef TYPE_2__ lua_State ;
typedef int lu_byte ;
struct TYPE_7__ {int * p; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
typedef int Proto ;
typedef int const Instruction ;


 int LUA_HOOKCOUNT ;
 int LUA_HOOKLINE ;
 int LUA_MASKCOUNT ;
 int LUA_MASKLINE ;
 TYPE_6__* ci_func (int ) ;
 int getline (int *,int) ;
 int luaD_callhook (TYPE_2__*,int ,int) ;
 int pcRel (int const*,int *) ;
 int resethookcount (TYPE_2__*) ;

__attribute__((used)) static void traceexec (lua_State *L, const Instruction *pc) {
  lu_byte mask = L->hookmask;
  const Instruction *oldpc = L->savedpc;
  L->savedpc = pc;
  if ((mask & LUA_MASKCOUNT) && L->hookcount == 0) {
    resethookcount(L);
    luaD_callhook(L, LUA_HOOKCOUNT, -1);
  }
  if (mask & LUA_MASKLINE) {
    Proto *p = ci_func(L->ci)->l.p;
    int npc = pcRel(pc, p);
    int newline = getline(p, npc);


    if (npc == 0 || pc <= oldpc || newline != getline(p, pcRel(oldpc, p)))
      luaD_callhook(L, LUA_HOOKLINE, newline);
  }
}
