
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int Cconst ;
 int IEmptyCaptureIdx ;
 int lua_createtable (int *,int,int ) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawseti (int *,int,int ) ;
 int lua_setfenv (int *,int) ;
 int * newpatt (int *,int) ;
 int setinstcap (int ,int ,int,int ,int ) ;

__attribute__((used)) static int capconst_l (lua_State *L) {
  int i, j;
  int n = lua_gettop(L);
  Instruction *p = newpatt(L, n);
  lua_createtable(L, n, 0);
  for (i = j = 1; i <= n; i++) {
    if (lua_isnil(L, i))
      setinstcap(p++, IEmptyCaptureIdx, 0, Cconst, 0);
    else {
      setinstcap(p++, IEmptyCaptureIdx, j, Cconst, 0);
      lua_pushvalue(L, i);
      lua_rawseti(L, -2, j++);
    }
  }
  lua_setfenv(L, -2);
  return 1;
}
