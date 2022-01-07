
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nCcalls; } ;
typedef TYPE_1__ lua_State ;


 int LUAI_MAXCCALLS ;
 int LUA_ERRERR ;
 int luaD_throw (TYPE_1__*,int ) ;
 int luaG_runerror (TYPE_1__*,char*) ;

__attribute__((used)) static void stackerror (lua_State *L) {
  if (L->nCcalls == LUAI_MAXCCALLS)
    luaG_runerror(L, "C stack overflow");
  else if (L->nCcalls >= (LUAI_MAXCCALLS + (LUAI_MAXCCALLS>>3)))
    luaD_throw(L, LUA_ERRERR);
}
