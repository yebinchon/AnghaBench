
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IChoice ;
 int ICommit ;
 int IPartialCommit ;
 int addpatt (int *,int *,int) ;
 int * newpatt (int *,int) ;
 int optimizechoice (int *) ;
 int setinst (int *,int ,int) ;

__attribute__((used)) static void optionals (lua_State *L, int l1, int n) {

  int i;
  Instruction *op = newpatt(L, n*(l1 + 1) + 1);
  Instruction *p = op;
  setinst(p++, IChoice, 1 + n*(l1 + 1));
  for (i = 0; i < n; i++) {
    p += addpatt(L, p, 1);
    setinst(p++, IPartialCommit, 1);
  }
  setinst(p - 1, ICommit, 1);
  optimizechoice(op);
}
