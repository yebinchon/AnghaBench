
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_5__ {scalar_t__ kind; char* name; } ;
struct TYPE_4__ {struct TYPE_4__* left; struct TYPE_4__* right; TYPE_2__* op; } ;
typedef TYPE_2__* Nonterm ;


 scalar_t__ NONTERM ;
 char* prefix ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *computents(Tree t, char *bp) {
 if (t) {
  Nonterm p = t->op;
  if (p->kind == NONTERM) {
   sprintf(bp, "%s_%s_NT, ", prefix, p->name);
   bp += strlen(bp);
  } else
   bp = computents(t->right, computents(t->left, bp));
 }
 return bp;
}
