
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int metatable; } ;
typedef TYPE_1__ Table ;
typedef int const TValue ;
typedef int StkId ;


 int MAXTAGLOOP ;
 int TM_NEWINDEX ;
 int callTM (int *,int const*,int const*,int const*,int ) ;
 int const* fasttm (int *,int ,int ) ;
 TYPE_1__* hvalue (int const*) ;
 int luaC_barriert (int *,TYPE_1__*,int ) ;
 int luaG_runerror (int *,char*) ;
 int luaG_typeerror (int *,int const*,char*) ;
 int const* luaH_set (int *,TYPE_1__*,int const*) ;
 int const* luaT_gettmbyobj (int *,int const*,int ) ;
 int setobj2t (int *,int const*,int ) ;
 scalar_t__ ttisfunction (int const*) ;
 scalar_t__ ttisnil (int const*) ;
 scalar_t__ ttistable (int const*) ;

void luaV_settable (lua_State *L, const TValue *t, TValue *key, StkId val) {
  int loop;
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    const TValue *tm;
    if (ttistable(t)) {
      Table *h = hvalue(t);
      TValue *oldval = luaH_set(L, h, key);
      if (!ttisnil(oldval) ||
          (tm = fasttm(L, h->metatable, TM_NEWINDEX)) == ((void*)0)) {
        setobj2t(L, oldval, val);
        luaC_barriert(L, h, val);
        return;
      }

    }
    else if (ttisnil(tm = luaT_gettmbyobj(L, t, TM_NEWINDEX)))
      luaG_typeerror(L, t, "index");
    if (ttisfunction(tm)) {
      callTM(L, tm, t, key, val);
      return;
    }
    t = tm;
  }
  luaG_runerror(L, "loop in settable");
}
