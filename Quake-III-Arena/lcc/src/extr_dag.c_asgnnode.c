
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int align; int size; } ;
struct TYPE_13__ {void** syms; } ;
struct TYPE_12__ {TYPE_3__* type; } ;
typedef TYPE_1__* Symbol ;
typedef TYPE_2__* Node ;


 scalar_t__ ADDRL ;
 scalar_t__ ASGN ;
 void* intconst (int ) ;
 TYPE_2__* newnode (scalar_t__,TYPE_2__*,TYPE_2__*,TYPE_1__*) ;
 scalar_t__ ttob (TYPE_3__*) ;
 TYPE_3__* voidptype ;

__attribute__((used)) static Node asgnnode(Symbol tmp, Node p) {
 p = newnode(ASGN + ttob(tmp->type),
  newnode(ADDRL + ttob(voidptype), ((void*)0), ((void*)0), tmp), p, ((void*)0));
 p->syms[0] = intconst(tmp->type->size);
 p->syms[1] = intconst(tmp->type->align);
 return p;
}
