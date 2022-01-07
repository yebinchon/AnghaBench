
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* lhs; int packed; int ern; } ;
struct TYPE_4__ {scalar_t__ chain; } ;
typedef TYPE_2__* Rule ;


 scalar_t__ Tflag ;
 int print (char*,char*,...) ;

__attribute__((used)) static void emitrecord(char *pre, Rule r, char *c, int cost) {
 if (Tflag)
  print("%s%Ptrace(a, %d, %s + %d, p->cost[%P%S_NT]);\n",
   pre, r->ern, c, cost, r->lhs);
 print("%sif (", pre);
 print("%s + %d < p->cost[%P%S_NT]) {\n"
"%s%1p->cost[%P%S_NT] = %s + %d;\n%s%1p->rule.%P%S = %d;\n",
  c, cost, r->lhs, pre, r->lhs, c, cost, pre, r->lhs,
  r->packed);
 if (r->lhs->chain)
  print("%s%1%Pclosure_%S(a, %s + %d);\n", pre, r->lhs, c, cost);
 print("%s}\n", pre);
}
