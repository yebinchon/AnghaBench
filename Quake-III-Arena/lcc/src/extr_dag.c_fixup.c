
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void** syms; TYPE_1__** kids; int op; struct TYPE_5__* link; } ;
struct TYPE_4__ {void** syms; int op; } ;
typedef TYPE_2__* Node ;


 scalar_t__ ADDRG ;
 scalar_t__ P ;
 int assert (int) ;
 void* equated (void*) ;
 int generic (int ) ;
 scalar_t__ specific (int ) ;

__attribute__((used)) static void fixup(Node p) {
 for ( ; p; p = p->link)
  switch (generic(p->op)) {
  case 132:
   if (specific(p->kids[0]->op) == ADDRG+P)
    p->kids[0]->syms[0] =
     equated(p->kids[0]->syms[0]);
   break;
  case 131: assert(p->syms[0] == equated(p->syms[0])); break;
  case 135: case 134: case 133: case 130: case 129: case 128:
   assert(p->syms[0]);
   p->syms[0] = equated(p->syms[0]);
  }
}
