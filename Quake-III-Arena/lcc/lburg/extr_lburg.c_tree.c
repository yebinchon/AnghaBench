
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
typedef TYPE_2__* Term ;
struct TYPE_10__ {scalar_t__ kind; int arity; } ;
struct TYPE_9__ {int nterms; struct TYPE_9__* right; struct TYPE_9__* left; TYPE_2__* op; } ;


 scalar_t__ NONTERM ;
 scalar_t__ TERM ;
 TYPE_1__* alloc (int) ;
 TYPE_2__* lookup (char*) ;
 scalar_t__ nonterm (char*) ;
 TYPE_2__* term (char*,int) ;
 int yyerror (char*,char*) ;

Tree tree(char *id, Tree left, Tree right) {
 Tree t = alloc(sizeof *t);
 Term p = lookup(id);
 int arity = 0;

 if (left && right)
  arity = 2;
 else if (left)
  arity = 1;
 if (p == ((void*)0) && arity > 0) {
  yyerror("undefined terminal `%s'\n", id);
  p = term(id, -1);
 } else if (p == ((void*)0) && arity == 0)
  p = (Term)nonterm(id);
 else if (p && p->kind == NONTERM && arity > 0) {
  yyerror("`%s' is a nonterminal\n", id);
  p = term(id, -1);
 }
 if (p->kind == TERM && p->arity == -1)
  p->arity = arity;
 if (p->kind == TERM && arity != p->arity)
  yyerror("inconsistent arity for terminal `%s'\n", id);
 t->op = p;
 t->nterms = p->kind == TERM;
 if ((t->left = left) != ((void*)0))
  t->nterms += left->nterms;
 if ((t->right = right) != ((void*)0))
  t->nterms += right->nterms;
 return t;
}
