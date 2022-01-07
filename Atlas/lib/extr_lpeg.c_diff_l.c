
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_14__ {int* cs; } ;
struct TYPE_13__ {int* buff; } ;
typedef TYPE_1__ Instruction ;
typedef TYPE_2__ CharsetTag ;


 int IChoice ;
 int IFail ;
 int IFailTwice ;
 scalar_t__ ISCHARSET ;
 int addpatt (int *,TYPE_1__*,int) ;
 int check2test (TYPE_1__*,int) ;
 int correctset (TYPE_1__*) ;
 TYPE_1__* getpatt (int *,int,int*) ;
 size_t i ;
 scalar_t__ isheadfail (TYPE_1__*) ;
 int loopset (size_t,int) ;
 TYPE_1__* newcharset (int *) ;
 TYPE_1__* newpatt (int *,int) ;
 int optimizechoice (TYPE_1__*) ;
 int setinst (int ,int ,int) ;
 scalar_t__ tocharset (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int diff_l (lua_State *L) {
  int l1, l2;
  Instruction *p1 = getpatt(L, 1, &l1);
  Instruction *p2 = getpatt(L, 2, &l2);
  CharsetTag st1, st2;
  if (tocharset(p1, &st1) == ISCHARSET && tocharset(p2, &st2) == ISCHARSET) {
    Instruction *p = newcharset(L);
    loopset(i, p[1].buff[i] = st1.cs[i] & ~st2.cs[i]);
    correctset(p);
  }
  else if (isheadfail(p2)) {
    Instruction *p = newpatt(L, l2 + 1 + l1);
    p += addpatt(L, p, 2);
    check2test(p - l2, l2 + 1);
    setinst(p++, IFail, 0);
    addpatt(L, p, 1);
  }
  else {

    Instruction *p = newpatt(L, 1 + l2 + 1 + l1);
    Instruction *pi = p;
    setinst(p++, IChoice, 1 + l2 + 1);
    p += addpatt(L, p, 2);
    setinst(p++, IFailTwice, 0);
    addpatt(L, p, 1);
    optimizechoice(pi);
  }
  return 1;
}
