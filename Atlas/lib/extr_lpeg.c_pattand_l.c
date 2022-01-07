
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IBackCommit ;
 int IChoice ;
 int IFail ;
 int addpatt (int *,int *,int) ;
 int getpattl (int *,int) ;
 int * newpatt (int *,int) ;
 int setinst (int ,int ,int) ;
 int setinstaux (int *,int ,int ,int) ;

__attribute__((used)) static int pattand_l (lua_State *L) {

  int l1 = getpattl(L, 1);
  Instruction *p = newpatt(L, 1 + l1 + 2);
  setinst(p++, IChoice, 1 + l1 + 1);
  p += addpatt(L, p, 1);
  setinst(p++, IBackCommit, 2);
  setinstaux(p, IFail, 0, 1);
  return 1;
}
