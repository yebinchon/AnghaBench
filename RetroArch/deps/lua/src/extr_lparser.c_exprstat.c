
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ k; } ;
struct LHS_assign {TYPE_4__ v; int * prev; } ;
struct TYPE_9__ {char token; } ;
struct TYPE_10__ {TYPE_1__ t; int * fs; } ;
typedef TYPE_2__ LexState ;
typedef int FuncState ;


 int SETARG_C (int ,int) ;
 scalar_t__ VCALL ;
 int assignment (TYPE_2__*,struct LHS_assign*,int) ;
 int check_condition (TYPE_2__*,int,char*) ;
 int getinstruction (int *,TYPE_4__*) ;
 int suffixedexp (TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static void exprstat (LexState *ls) {

  FuncState *fs = ls->fs;
  struct LHS_assign v;
  suffixedexp(ls, &v.v);
  if (ls->t.token == '=' || ls->t.token == ',') {
    v.prev = ((void*)0);
    assignment(ls, &v, 1);
  }
  else {
    check_condition(ls, v.v.k == VCALL, "syntax error");
    SETARG_C(getinstruction(fs, &v.v), 1);
  }
}
