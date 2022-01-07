
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int addpatt (int *,int *,int) ;
 int check2test (int *,int) ;
 int * newpatt (int *,int) ;

__attribute__((used)) static void optionalheadfail (lua_State *L, int l1, int n) {
  Instruction *op = newpatt(L, n * l1);
  Instruction *p = op;
  int i;
  for (i = 0; i < n; i++) {
    p += addpatt(L, p, 1);
    check2test(p - l1, (n - i)*l1);
  }
}
