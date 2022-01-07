
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int cap; int * L; } ;
typedef TYPE_1__ CapState ;


 scalar_t__ Cfunction ;
 scalar_t__ captype (int ) ;
 scalar_t__ isclosecap (int ) ;
 scalar_t__ isfullcap (int ) ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int) ;
 int lua_insert (int *,int) ;
 int pushallcaptures (TYPE_1__*,int ) ;
 int pushcapture (TYPE_1__*) ;
 int pushluaval (TYPE_1__*) ;

__attribute__((used)) static int accumcap (CapState *cs) {
  lua_State *L = cs->L;
  if (isfullcap(cs->cap++) || isclosecap(cs->cap) || pushcapture(cs) != 1)
    return luaL_error(L, "no initial value for accumulator capture");
  while (!isclosecap(cs->cap)) {
    int n;
    if (captype(cs->cap) != Cfunction)
      return luaL_error(L, "invalid (non function) capture to accumulate");
    pushluaval(cs);
    lua_insert(L, -2);
    n = pushallcaptures(cs, 0);
    lua_call(L, n + 1, 1);
  }
  cs->cap++;
  return 1;
}
