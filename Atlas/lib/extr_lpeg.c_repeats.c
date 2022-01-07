
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IChoice ;
 int IPartialCommit ;
 int addpatt (int *,int *,int) ;
 int luaL_error (int *,char*) ;
 int * newpatt (int *,int) ;
 int setinst (int *,int ,int) ;
 int verify (int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static Instruction *repeats (lua_State *L, Instruction *p1, int l1, int n) {

  int i;
  Instruction *op = newpatt(L, (n + 1)*l1 + 2);
  Instruction *p = op;
  if (!verify(L, p1, p1, p1 + l1, 0, 0))
    luaL_error(L, "loop body may accept empty string");
  for (i = 0; i < n; i++) {
    p += addpatt(L, p, 1);
  }
  setinst(p++, IChoice, 1 + l1 + 1);
  p += addpatt(L, p, 1);
  setinst(p, IPartialCommit, -l1);
  return op;
}
