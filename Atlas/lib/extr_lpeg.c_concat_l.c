
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_8__ {scalar_t__ aux; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 int addpatt (int *,TYPE_2__*,int) ;
 int any (int *,scalar_t__,int ,int *) ;
 TYPE_2__* getpatt (int *,int,int*) ;
 scalar_t__ isany (TYPE_2__*) ;
 TYPE_2__* newpatt (int *,int) ;
 int optimizecaptures (TYPE_2__*) ;

__attribute__((used)) static int concat_l (lua_State *L) {

  int l1, l2;
  Instruction *p1 = getpatt(L, 1, &l1);
  Instruction *p2 = getpatt(L, 2, &l2);
  if (isany(p1) && isany(p2))
    any(L, p1->i.aux + p2->i.aux, 0, ((void*)0));
  else {
    Instruction *op = newpatt(L, l1 + l2);
    Instruction *p = op + addpatt(L, op, 1);
    addpatt(L, p, 2);
    optimizecaptures(op);
  }
  return 1;
}
