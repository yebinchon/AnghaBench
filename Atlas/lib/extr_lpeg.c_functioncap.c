
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int L; } ;
typedef TYPE_1__ CapState ;


 int LUA_MULTRET ;
 int lua_call (int ,int,int ) ;
 int lua_gettop (int ) ;
 int pushallcaptures (TYPE_1__*,int ) ;
 int pushluaval (TYPE_1__*) ;

__attribute__((used)) static int functioncap (CapState *cs) {
  int n;
  int top = lua_gettop(cs->L);
  pushluaval(cs);
  n = pushallcaptures(cs, 0);
  lua_call(cs->L, n, LUA_MULTRET);
  return lua_gettop(cs->L) - top;
}
