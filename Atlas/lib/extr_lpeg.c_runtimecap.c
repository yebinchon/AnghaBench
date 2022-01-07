
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_11__ {char const* s; int ptop; scalar_t__ valuecached; int * L; TYPE_1__* cap; TYPE_1__* ocap; } ;
struct TYPE_10__ {char const* s; int kind; } ;
typedef TYPE_1__ Capture ;
typedef TYPE_2__ CapState ;


 int Cclose ;
 scalar_t__ Cruntime ;
 int LUA_MULTRET ;
 int SUBJIDX ;
 int assert (int) ;
 scalar_t__ captype (TYPE_1__*) ;
 TYPE_1__* findopen (TYPE_1__*) ;
 int luaL_checkstack (int *,int,char*) ;
 int lua_call (int *,int,int ) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushvalue (int *,int ) ;
 int pushallcaptures (TYPE_2__*,int ) ;
 int pushluaval (TYPE_2__*) ;

__attribute__((used)) static int runtimecap (lua_State *L, Capture *close, Capture *ocap,
                       const char *o, const char *s, int ptop) {
  CapState cs;
  int n;
  Capture *open = findopen(close);
  assert(captype(open) == Cruntime);
  close->kind = Cclose;
  close->s = s;
  cs.ocap = ocap; cs.cap = open; cs.L = L;
  cs.s = o; cs.valuecached = 0; cs.ptop = ptop;
  luaL_checkstack(L, 4, "too many runtime captures");
  pushluaval(&cs);
  lua_pushvalue(L, SUBJIDX);
  lua_pushinteger(L, s - o + 1);
  n = pushallcaptures(&cs, 0);
  lua_call(L, n + 2, LUA_MULTRET);
  return close - open;
}
