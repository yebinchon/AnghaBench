
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int list_ty ;
struct TYPE_9__ {struct TYPE_9__* link; TYPE_2__** kids; TYPE_1__** syms; int op; } ;
struct TYPE_8__ {TYPE_1__** syms; int op; } ;
struct TYPE_7__ {scalar_t__ scope; } ;
typedef TYPE_3__* Node ;


 scalar_t__ ADDRG ;
 scalar_t__ JUMP ;
 scalar_t__ LABELS ;
 scalar_t__ P ;
 int Seq_addhi (int ,int ) ;
 int Seq_new (int ) ;
 scalar_t__ V ;
 int put (int ) ;
 int rcc_Forest (int ) ;
 scalar_t__ specific (int ) ;
 int * temps ;
 int visit (TYPE_3__*) ;

__attribute__((used)) static Node asdl_gen(Node p) {
 Node q;
 list_ty forest = Seq_new(0);

 for (q = p; p != ((void*)0); p = p->link)
  if (specific(p->op) == JUMP+V && specific(p->kids[0]->op) == ADDRG+P
  && p->kids[0]->syms[0]->scope == LABELS) {
   p->syms[0] = p->kids[0]->syms[0];
   p->kids[0] = ((void*)0);
  }
 for (p = q; p != ((void*)0); p = p->link)
  Seq_addhi(forest, visit(p));
 put(rcc_Forest(forest));
 temps = ((void*)0);
 return q;
}
