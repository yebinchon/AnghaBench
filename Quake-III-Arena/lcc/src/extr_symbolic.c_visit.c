
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int inst; TYPE_2__* next; } ;
struct TYPE_6__ {TYPE_1__ x; struct TYPE_6__** kids; } ;
typedef TYPE_2__* Node ;


 TYPE_2__** tail ;

__attribute__((used)) static int visit(Node p, int n) {
 if (p && p->x.inst == 0) {
  p->x.inst = ++n;
  n = visit(p->kids[0], n);
  n = visit(p->kids[1], n);
  *tail = p;
  tail = &p->x.next;
 }
 return n;
}
