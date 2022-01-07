
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ level; struct TYPE_6__* previous; TYPE_1__* all; } ;
struct TYPE_5__ {scalar_t__ level; struct TYPE_5__* previous; } ;
struct TYPE_4__ {scalar_t__ scope; struct TYPE_4__* up; } ;
typedef TYPE_1__* Symbol ;


 int Aflag ;
 scalar_t__ GLOBAL ;
 int assert (int) ;
 TYPE_3__* identifiers ;
 scalar_t__ level ;
 int rmtypes (scalar_t__) ;
 TYPE_2__* types ;
 int warning (char*) ;

void exitscope(void) {
 rmtypes(level);
 if (types->level == level)
  types = types->previous;
 if (identifiers->level == level) {
  if (Aflag >= 2) {
   int n = 0;
   Symbol p;
   for (p = identifiers->all; p && p->scope == level; p = p->up)
    if (++n > 127) {
     warning("more than 127 identifiers declared in a block\n");
     break;
    }
  }
  identifiers = identifiers->previous;
 }
 assert(level >= GLOBAL);
 --level;
}
