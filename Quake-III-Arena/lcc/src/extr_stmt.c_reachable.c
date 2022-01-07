
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; struct TYPE_3__* prev; } ;
typedef TYPE_1__* Code ;


 scalar_t__ Jump ;
 scalar_t__ Label ;
 int Start ;
 scalar_t__ Switch ;
 TYPE_1__* codelist ;

int reachable(int kind) {
 Code cp;

 if (kind > Start) {
  Code cp;
  for (cp = codelist; cp->kind < Label; )
   cp = cp->prev;
  if (cp->kind == Jump || cp->kind == Switch)
   return 0;
 }
 return 1;
}
