
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_11__ {scalar_t__ code; int offset; } ;
struct TYPE_12__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ ICall ;
 scalar_t__ IJmp ;
 scalar_t__ IOpenCall ;
 scalar_t__ IRet ;
 int LUA_MINSTACK ;
 int MAXPATTSIZE ;
 int addpatt (int *,TYPE_2__*,int) ;
 int checkrule (int *,TYPE_2__*,int,int,int,int) ;
 int getposition (int *,int,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkstack (int *,int ,char*) ;
 int luaL_error (int *,char*) ;
 int lua_gettable (int *,int) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_settable (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_tonumber (int *,int) ;
 TYPE_2__* newpatt (int *,int) ;
 int optimizejumps (TYPE_2__*) ;
 int pattsize (int *,int) ;
 int setinst (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ sizei (TYPE_2__*) ;
 size_t target (TYPE_2__*,int) ;
 int testpattern (int *,int) ;

__attribute__((used)) static Instruction *fix_l (lua_State *L, int t) {
  Instruction *p;
  int i;
  int totalsize = 2;
  int n = 0;
  int base = lua_gettop(L);
  lua_newtable(L);
  lua_pushinteger(L, 1);

  lua_pushnil(L);
  while (lua_next(L, t) != 0) {
    int l;
    if (lua_tonumber(L, -2) == 1 && lua_isstring(L, -1)) {
      lua_replace(L, base + 2);
      continue;
    }
    if (!testpattern(L, -1))
      luaL_error(L, "invalid field in grammar");
    l = pattsize(L, -1) + 1;
    if (totalsize >= MAXPATTSIZE - l)
      luaL_error(L, "grammar too large");
    luaL_checkstack(L, LUA_MINSTACK, "grammar has too many rules");
    lua_insert(L, -2);
    lua_pushvalue(L, -1);
    lua_pushvalue(L, -1);
    lua_pushinteger(L, totalsize);
    lua_settable(L, base + 1);
    totalsize += l;
    n++;
  }
  luaL_argcheck(L, n > 0, t, "empty grammar");
  p = newpatt(L, totalsize);
  p++;
  setinst(p++, IJmp, totalsize - 1);
  for (i = 1; i <= n; i++) {
    p += addpatt(L, p, base + 1 + i*2);
    setinst(p++, IRet, 0);
  }
  p -= totalsize;
  totalsize = 2;
  for (i = 1; i <= n; i++) {
    int l = pattsize(L, base + 1 + i*2) + 1;
    checkrule(L, p, totalsize, totalsize + l, base + 1, base + 2 + i*2);
    totalsize += l;
  }
  lua_pushvalue(L, base + 2);
  lua_gettable(L, base + 1);
  i = lua_tonumber(L, -1);
  lua_pop(L, 1);
  if (i == 0)
    luaL_error(L, "initial rule not defined in given grammar");
  setinst(p, ICall, i);

  for (i = 0; i < totalsize; i += sizei(p + i)) {
    if (p[i].i.code == IOpenCall) {
      int pos = getposition(L, base + 1, p[i].i.offset);
      p[i].i.code = (p[target(p, i + 1)].i.code == IRet) ? IJmp : ICall;
      p[i].i.offset = pos - i;
    }
  }
  optimizejumps(p);
  lua_replace(L, t);
  lua_settop(L, base);
  return p;
}
