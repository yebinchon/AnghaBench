
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; int number; struct TYPE_7__* link; } ;
typedef TYPE_1__* Nonterm ;


 scalar_t__ NONTERM ;
 scalar_t__ TERM ;
 int assert (int) ;
 TYPE_1__* install (char*) ;
 TYPE_1__* lookup (char*) ;
 int ntnumber ;
 TYPE_1__* nts ;
 TYPE_1__* start ;
 int yyerror (char*,char*) ;

Nonterm nonterm(char *id) {
 Nonterm p = lookup(id), *q = &nts;

 if (p && p->kind == NONTERM)
  return p;
 if (p && p->kind == TERM)
  yyerror("`%s' is a terminal\n", id);
 p = install(id);
 p->kind = NONTERM;
 p->number = ++ntnumber;
 if (p->number == 1)
  start = p;
 while (*q && (*q)->number < p->number)
  q = &(*q)->link;
 assert(*q == 0 || (*q)->number != p->number);
 p->link = *q;
 *q = p;
 return p;
}
