
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int Cclose ;
 int Cruntime ;
 int ICloseRunTime ;
 int IOpenCapture ;
 int LUA_TFUNCTION ;
 int addpatt (int *,int *,int) ;
 int getpattl (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int * newpatt (int *,int) ;
 int optimizecaptures (int *) ;
 int setinstcap (int *,int ,int ,int ,int ) ;
 int value2fenv (int *,int) ;

__attribute__((used)) static int matchtime_l (lua_State *L) {
  int l1 = getpattl(L, 1);
  Instruction *op = newpatt(L, 1 + l1 + 1);
  Instruction *p = op;
  luaL_checktype(L, 2, LUA_TFUNCTION);
  setinstcap(p++, IOpenCapture, value2fenv(L, 2), Cruntime, 0);
  p += addpatt(L, p, 1);
  setinstcap(p, ICloseRunTime, 0, Cclose, 0);
  optimizecaptures(op);
  return 1;
}
