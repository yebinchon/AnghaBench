
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IEmptyCapture ;
 int SHRT_MAX ;
 int luaL_argcheck (int *,int,int,char const*) ;
 int luaL_checkint (int *,int) ;
 int * newpatt (int *,int) ;
 int setinstcap (int *,int ,int,int,int ) ;

__attribute__((used)) static int emptycap_aux (lua_State *L, int kind, const char *msg) {
  int n = luaL_checkint(L, 1);
  Instruction *p = newpatt(L, 1);
  luaL_argcheck(L, 0 < n && n <= SHRT_MAX, 1, msg);
  setinstcap(p, IEmptyCapture, n, kind, 0);
  return 1;
}
