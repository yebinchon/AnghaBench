
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct entry {int cl; int (* func ) (int ,void*,void*) ;} ;
struct TYPE_3__ {struct TYPE_3__* link; struct entry* x; } ;
typedef TYPE_1__* List ;


 int stub1 (int ,void*,void*) ;

void apply(List event, void *arg1, void *arg2) {
 if (event) {
  List lp = event;
  do {
   struct entry *p = lp->x;
   (*p->func)(p->cl, arg1, arg2);
   lp = lp->link;
  } while (lp != event);
 }
}
