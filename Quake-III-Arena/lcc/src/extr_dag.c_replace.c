
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* cse; scalar_t__ replace; } ;
struct TYPE_10__ {TYPE_1__ t; } ;
struct TYPE_12__ {TYPE_2__ u; scalar_t__ temporary; } ;
struct TYPE_11__ {int count; struct TYPE_11__** kids; TYPE_8__** syms; int op; } ;
typedef TYPE_3__* Node ;


 scalar_t__ ADDRG ;
 scalar_t__ ADDRL ;
 scalar_t__ INDIR ;
 int assert (int ) ;
 scalar_t__ generic (int ) ;
 scalar_t__ isaddrop (int ) ;
 TYPE_3__* newnode (int ,TYPE_3__*,int *,TYPE_8__*) ;

__attribute__((used)) static Node replace(Node p) {
 if (p && ( generic(p->op) == INDIR
   && generic(p->kids[0]->op) == ADDRL
   && p->kids[0]->syms[0]->temporary
   && p->kids[0]->syms[0]->u.t.replace)) {
  p = p->kids[0]->syms[0]->u.t.cse;
  if (generic(p->op) == INDIR && isaddrop(p->kids[0]->op))
   p = newnode(p->op, newnode(p->kids[0]->op, ((void*)0), ((void*)0),
    p->kids[0]->syms[0]), ((void*)0), ((void*)0));
  else if (generic(p->op) == ADDRG)
   p = newnode(p->op, ((void*)0), ((void*)0), p->syms[0]);
  else
   assert(0);
  p->count = 1;
 } else if (p) {
  p->kids[0] = replace(p->kids[0]);
  p->kids[1] = replace(p->kids[1]);
 }
 return p;
}
