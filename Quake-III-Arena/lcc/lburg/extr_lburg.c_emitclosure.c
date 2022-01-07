
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* chain; struct TYPE_6__* link; } ;
struct TYPE_5__ {int cost; struct TYPE_5__* chain; } ;
typedef TYPE_1__* Rule ;
typedef TYPE_2__* Nonterm ;


 int emitrecord (char*,TYPE_1__*,char*,int ) ;
 int print (char*,...) ;

__attribute__((used)) static void emitclosure(Nonterm nts) {
 Nonterm p;

 for (p = nts; p; p = p->link)
  if (p->chain)
   print("static void %Pclosure_%S(NODEPTR_TYPE, int);\n", p);
 print("\n");
 for (p = nts; p; p = p->link)
  if (p->chain) {
   Rule r;
   print("static void %Pclosure_%S(NODEPTR_TYPE a, int c) {\n"
"%1struct %Pstate *p = STATE_LABEL(a);\n", p);
   for (r = p->chain; r; r = r->chain)
    emitrecord("\t", r, "c", r->cost);
   print("}\n\n");
  }
}
