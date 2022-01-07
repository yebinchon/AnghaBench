
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int metatable; } ;
typedef TYPE_1__ Table ;
typedef int TValue ;
typedef int StkId ;


 int MAXTAGLOOP ;
 int TM_INDEX ;
 int callTMres (int *,int ,int const*,int const*,int *) ;
 int * fasttm (int *,int ,int ) ;
 TYPE_1__* hvalue (int const*) ;
 int luaG_runerror (int *,char*) ;
 int luaG_typeerror (int *,int const*,char*) ;
 int * luaH_get (TYPE_1__*,int *) ;
 int * luaT_gettmbyobj (int *,int const*,int ) ;
 int setobj2s (int *,int ,int const*) ;
 scalar_t__ ttisfunction (int const*) ;
 scalar_t__ ttisnil (int const*) ;
 scalar_t__ ttistable (int const*) ;

void luaV_gettable (lua_State *L, const TValue *t, TValue *key, StkId val) {
  int loop;
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    const TValue *tm;
    if (ttistable(t)) {
      Table *h = hvalue(t);
      const TValue *res = luaH_get(h, key);
      if (!ttisnil(res) ||
          (tm = fasttm(L, h->metatable, TM_INDEX)) == ((void*)0)) {
        setobj2s(L, val, res);
        return;
      }

    }
    else if (ttisnil(tm = luaT_gettmbyobj(L, t, TM_INDEX)))
      luaG_typeerror(L, t, "index");
    if (ttisfunction(tm)) {
      callTMres(L, val, tm, t, key);
      return;
    }
    t = tm;
  }
  luaG_runerror(L, "loop in gettable");
}
