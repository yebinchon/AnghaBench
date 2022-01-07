
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ op; struct TYPE_5__** kids; TYPE_1__** syms; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__* Node ;
 int B ;
 int LOAD ;






 scalar_t__ P ;



 scalar_t__ VREG ;
 int assert (int ) ;
 int fprint (int ,char*,...) ;
 int generic (scalar_t__) ;
 int opname (scalar_t__) ;
 int optype (scalar_t__) ;
 int stderr ;

__attribute__((used)) static void dumptree(Node p) {
 if (p->op == VREG+P && p->syms[0]) {
  fprint(stderr, "VREGP(%s)", p->syms[0]->name);
  return;
 } else if (generic(p->op) == LOAD) {
  fprint(stderr, "LOAD(");
  dumptree(p->kids[0]);
  fprint(stderr, ")");
  return;
 }
 fprint(stderr, "%s(", opname(p->op));
 switch (generic(p->op)) {
 case 149: case 138:
 case 158: case 159: case 157:
  if (p->syms[0])
   fprint(stderr, "%s", p->syms[0]->name);
  break;
 case 130:
  if (p->kids[0])
   dumptree(p->kids[0]);
  break;
 case 148: case 147: case 146: case 145: case 139:
 case 156: case 153: case 131: case 140:
  dumptree(p->kids[0]);
  break;
 case 150:
  if (optype(p->op) != B) {
   dumptree(p->kids[0]);
   break;
  }

 case 143: case 132: case 141: case 142: case 137: case 135:
 case 155: case 152: case 154: case 151: case 129: case 136:
 case 160: case 128: case 144: case 133: case 134:
  dumptree(p->kids[0]);
  fprint(stderr, ", ");
  dumptree(p->kids[1]);
  break;
 default: assert(0);
 }
 fprint(stderr, ")");
}
