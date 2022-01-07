
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int Cposition ;
 int IEmptyCapture ;
 int * newpatt (int *,int) ;
 int setinstcap (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int position_l (lua_State *L) {
  Instruction *p = newpatt(L, 1);
  setinstcap(p, IEmptyCapture, 0, Cposition, 0);
  return 1;
}
