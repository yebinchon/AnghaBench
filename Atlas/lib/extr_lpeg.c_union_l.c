
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {scalar_t__ code; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;
typedef int CharsetTag ;


 scalar_t__ IFail ;
 TYPE_2__* getpatt (int *,int,int*) ;
 int lua_pushvalue (int *,int) ;
 int separateparts (int *,TYPE_2__*,int,int,int*,int *) ;
 int tocharset (TYPE_2__*,int *) ;

__attribute__((used)) static int union_l (lua_State *L) {
  int l1, l2;
  int size = 0;
  Instruction *p1 = getpatt(L, 1, &l1);
  Instruction *p2 = getpatt(L, 2, &l2);
  CharsetTag st2;
  if (p1->i.code == IFail)
    lua_pushvalue(L, 2);
  else if (p2->i.code == IFail)
    lua_pushvalue(L, 1);
  else {
    tocharset(p2, &st2);
    separateparts(L, p1, l1, l2, &size, &st2);
  }
  return 1;
}
