
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int cs; } ;
typedef int Instruction ;
typedef TYPE_1__ CharsetTag ;


 scalar_t__ ISCHARSET ;
 int * getpatt (int *,int,int*) ;
 scalar_t__ isheadfail (int *) ;
 int luaL_checkint (int *,int) ;
 int optimizecaptures (int *) ;
 int optimizejumps (int *) ;
 int optionalheadfail (int *,int,int) ;
 int optionals (int *,int,int) ;
 int repeatcharset (int *,int ,int,int) ;
 int * repeatheadfail (int *,int,int) ;
 int * repeats (int *,int *,int,int) ;
 scalar_t__ tocharset (int *,TYPE_1__*) ;

__attribute__((used)) static int star_l (lua_State *L) {
  int l1;
  int n = luaL_checkint(L, 2);
  Instruction *p1 = getpatt(L, 1, &l1);
  if (n >= 0) {
    CharsetTag st;
    Instruction *op;
    if (tocharset(p1, &st) == ISCHARSET)
      return repeatcharset(L, st.cs, l1, n);
    if (isheadfail(p1))
      op = repeatheadfail(L, l1, n);
    else
      op = repeats(L, p1, l1, n);
    optimizecaptures(op);
    optimizejumps(op);
  }
  else {
    if (isheadfail(p1))
      optionalheadfail(L, l1, -n);
    else
      optionals(L, l1, -n);
  }
  return 1;
}
