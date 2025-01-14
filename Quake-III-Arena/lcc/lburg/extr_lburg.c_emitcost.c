
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_6__ {scalar_t__ kind; } ;
struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; TYPE_2__* op; } ;
typedef TYPE_2__* Nonterm ;


 scalar_t__ TERM ;
 int print (char*,char*,TYPE_2__*) ;
 char* stringf (char*,char*) ;

__attribute__((used)) static void emitcost(Tree t, char *v) {
 Nonterm p = t->op;

 if (p->kind == TERM) {
  if (t->left)
   emitcost(t->left, stringf("LEFT_CHILD(%s)", v));
  if (t->right)
   emitcost(t->right, stringf("RIGHT_CHILD(%s)", v));
 } else
  print("((struct %Pstate *)(%s->x.state))->cost[%P%S_NT] + ", v, p);
}
