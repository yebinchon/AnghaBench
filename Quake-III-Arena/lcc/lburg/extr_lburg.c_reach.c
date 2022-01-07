
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_6__ {scalar_t__ kind; int reached; } ;
struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; TYPE_2__* op; } ;
typedef TYPE_2__* Nonterm ;


 scalar_t__ NONTERM ;
 int ckreach (TYPE_2__*) ;

__attribute__((used)) static void reach(Tree t) {
 Nonterm p = t->op;

 if (p->kind == NONTERM)
  if (!p->reached)
   ckreach(p);
 if (t->left)
  reach(t->left);
 if (t->right)
  reach(t->right);
}
