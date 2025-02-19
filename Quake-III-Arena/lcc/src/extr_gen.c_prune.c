
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ inst; TYPE_4__** kids; } ;
struct TYPE_11__ {TYPE_3__ x; struct TYPE_11__** kids; TYPE_2__** syms; } ;
struct TYPE_8__ {int usecount; } ;
struct TYPE_9__ {int name; TYPE_1__ x; scalar_t__ temporary; } ;
typedef TYPE_4__* Node ;


 size_t RX ;
 int debug (int ) ;
 int fprint (int ,char*,int ) ;
 int stderr ;

__attribute__((used)) static Node *prune(Node p, Node pp[]) {
 if (p == ((void*)0))
  return pp;
 p->x.kids[0] = p->x.kids[1] = p->x.kids[2] = ((void*)0);
 if (p->x.inst == 0)
  return prune(p->kids[1], prune(p->kids[0], pp));
 else if (p->syms[RX] && p->syms[RX]->temporary
 && p->syms[RX]->x.usecount < 2) {
  p->x.inst = 0;
  debug(fprint(stderr, "(clobbering %s)\n", p->syms[RX]->name));
  return prune(p->kids[1], prune(p->kids[0], pp));
 }
 else {
  prune(p->kids[1], prune(p->kids[0], &p->x.kids[0]));
  *pp = p;
  return pp + 1;
 }
}
