
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {int i; } ;
struct TYPE_16__ {TYPE_1__ v; } ;
struct TYPE_17__ {TYPE_2__ c; } ;
struct TYPE_20__ {TYPE_3__ u; int sclass; } ;
struct TYPE_19__ {scalar_t__ op; TYPE_7__** syms; struct TYPE_19__** kids; } ;
struct TYPE_18__ {int (* target ) (TYPE_5__*) ;TYPE_7__* (* rmap ) (scalar_t__) ;} ;
struct TYPE_14__ {TYPE_4__ x; } ;
typedef TYPE_5__* Node ;
 int F ;

 TYPE_13__* IR ;
 scalar_t__ LOAD ;
 scalar_t__* NeedsReg ;
 scalar_t__ P ;
 int REGISTER ;
 scalar_t__ VREG ;
 int generic (scalar_t__) ;
 size_t opindex (scalar_t__) ;
 scalar_t__ opkind (scalar_t__) ;
 int opsize (scalar_t__) ;
 int optype (scalar_t__) ;
 int rtarget (TYPE_5__*,int,TYPE_7__*) ;
 int setreg (TYPE_5__*,TYPE_7__*) ;
 TYPE_7__* stub1 (scalar_t__) ;
 int stub2 (TYPE_5__*) ;

__attribute__((used)) static void prelabel(Node p) {
 if (p == ((void*)0))
  return;
 prelabel(p->kids[0]);
 prelabel(p->kids[1]);
 if (NeedsReg[opindex(p->op)])
  setreg(p, (*IR->x.rmap)(opkind(p->op)));
 switch (generic(p->op)) {
 case 134: case 133:
  if (p->syms[0]->sclass == REGISTER)
   p->op = VREG+P;
  break;
 case 128:
  if (p->kids[0]->op == VREG+P)
   setreg(p, p->kids[0]->syms[0]);
  break;
 case 132:
  if (p->kids[0]->op == VREG+P)
   rtarget(p, 1, p->kids[0]->syms[0]);
  break;
 case 131: case 129: case 130:
  if (optype(p->op) != F
  && opsize(p->op) <= p->syms[0]->u.c.v.i)
   p->op = LOAD + opkind(p->op);
  break;
 }
 (IR->x.target)(p);
}
