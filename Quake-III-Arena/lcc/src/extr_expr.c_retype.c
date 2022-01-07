
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ Type ;
typedef TYPE_1__* Tree ;
struct TYPE_5__ {scalar_t__ type; int u; int node; int * kids; int op; } ;


 TYPE_1__* tree (int ,scalar_t__,int ,int ) ;

Tree retype(Tree p, Type ty) {
 Tree q;

 if (p->type == ty)
  return p;
 q = tree(p->op, ty, p->kids[0], p->kids[1]);
 q->node = p->node;
 q->u = p->u;
 return q;
}
