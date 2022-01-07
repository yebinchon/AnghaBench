
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IJmp ;
 int addpatt (int *,int *,int) ;
 int check2test (int *,int) ;
 int * newpatt (int *,int) ;
 int setinst (int *,int ,int) ;

__attribute__((used)) static Instruction *repeatheadfail (lua_State *L, int l1, int n) {

  int i;
  Instruction *p = newpatt(L, (n + 1)*l1 + 1);
  Instruction *op = p;
  for (i = 0; i < n; i++) {
    p += addpatt(L, p, 1);
  }
  p += addpatt(L, p, 1);
  check2test(p - l1, l1 + 1);
  setinst(p, IJmp, -l1);
  return op;
}
