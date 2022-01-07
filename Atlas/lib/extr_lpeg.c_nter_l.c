
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IOpenCall ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_isnoneornil (int *,int) ;
 int * newpatt (int *,int) ;
 int setinst (int *,int ,int ) ;
 int value2fenv (int *,int) ;

__attribute__((used)) static int nter_l (lua_State *L) {
  Instruction *p;
  luaL_argcheck(L, !lua_isnoneornil(L, 1), 1, "non-nil value expected");
  p = newpatt(L, 1);
  setinst(p, IOpenCall, value2fenv(L, 1));
  return 1;
}
