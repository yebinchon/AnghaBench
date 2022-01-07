
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int jointable (int *,int) ;
 int * newpatt (int *,int) ;

__attribute__((used)) static Instruction *auxnew (lua_State *L, Instruction **op, int *size,
                                         int extra) {
  *op = newpatt(L, *size + extra);
  jointable(L, 1);
  *size += extra;
  return *op + *size - extra;
}
