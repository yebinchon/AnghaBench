
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nCcalls; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int LUAI_MAXCCALLS ;
 int LUA_ERRERR ;
 scalar_t__ PCRLUA ;
 int luaC_checkGC (TYPE_1__*) ;
 scalar_t__ luaD_precall (TYPE_1__*,int ,int) ;
 int luaD_throw (TYPE_1__*,int ) ;
 int luaG_runerror (TYPE_1__*,char*) ;
 int luaV_execute (TYPE_1__*,int) ;

void luaD_call (lua_State *L, StkId func, int nResults) {
  if (++L->nCcalls >= LUAI_MAXCCALLS) {
    if (L->nCcalls == LUAI_MAXCCALLS)
      luaG_runerror(L, "C stack overflow");
    else if (L->nCcalls >= (LUAI_MAXCCALLS + (LUAI_MAXCCALLS>>3)))
      luaD_throw(L, LUA_ERRERR);
  }
  if (luaD_precall(L, func, nResults) == PCRLUA)
    luaV_execute(L, 1);
  L->nCcalls--;
  luaC_checkGC(L);
}
