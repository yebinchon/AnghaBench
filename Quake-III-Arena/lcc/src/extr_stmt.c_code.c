
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kind; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__* Code ;


 int FUNC ;
 int NEW (TYPE_1__*,int ) ;
 TYPE_1__* codelist ;
 int reachable (int) ;
 int warning (char*) ;

Code code(int kind) {
 Code cp;

 if (!reachable(kind))
  warning("unreachable code\n");

 NEW(cp, FUNC);
 cp->kind = kind;
 cp->prev = codelist;
 cp->next = ((void*)0);
 codelist->next = cp;
 codelist = cp;
 return cp;
}
