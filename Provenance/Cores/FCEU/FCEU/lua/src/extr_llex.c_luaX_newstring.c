
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {TYPE_1__* fs; int * L; } ;
struct TYPE_4__ {int h; } ;
typedef int TValue ;
typedef int TString ;
typedef TYPE_2__ LexState ;


 int * luaH_setstr (int *,int ,int *) ;
 int * luaS_newlstr (int *,char const*,size_t) ;
 int setbvalue (int *,int) ;
 scalar_t__ ttisnil (int *) ;

TString *luaX_newstring (LexState *ls, const char *str, size_t l) {
  lua_State *L = ls->L;
  TString *ts = luaS_newlstr(L, str, l);
  TValue *o = luaH_setstr(L, ls->fs->h, ts);
  if (ttisnil(o))
    setbvalue(o, 1);
  return ts;
}
