
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* Term ;
struct TYPE_6__ {int esn; int arity; struct TYPE_6__* link; int name; int kind; } ;


 int TERM ;
 TYPE_1__* install (char*) ;
 TYPE_1__* lookup (char*) ;
 TYPE_1__* terms ;
 int yyerror (char*,char*,...) ;

Term term(char *id, int esn) {
 Term p = lookup(id), *q = &terms;

 if (p)
  yyerror("redefinition of terminal `%s'\n", id);
 else
  p = install(id);
 p->kind = TERM;
 p->esn = esn;
 p->arity = -1;
 while (*q && (*q)->esn < p->esn)
  q = &(*q)->link;
 if (*q && (*q)->esn == p->esn)
  yyerror("duplicate external symbol number `%s=%d'\n",
   p->name, p->esn);
 p->link = *q;
 *q = p;
 return p;
}
