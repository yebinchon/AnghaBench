
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* _rule ) (int ,int) ;} ;
struct TYPE_11__ {TYPE_1__ x; } ;
struct TYPE_9__ {int state; } ;
struct TYPE_10__ {int op; TYPE_2__ x; } ;
typedef TYPE_3__* Node ;


 TYPE_7__* IR ;
 int assert (TYPE_3__*) ;
 int fprint (int ,char*,TYPE_3__*,int ,int *) ;
 int opname (int ) ;
 int src ;
 int stderr ;
 int stub1 (int ,int) ;

__attribute__((used)) static int getrule(Node p, int nt) {
 int rulenum;

 assert(p);
 rulenum = (*IR->x._rule)(p->x.state, nt);
 if (!rulenum) {
  fprint(stderr, "(%x->op=%s at %w is corrupt.)\n", p, opname(p->op), &src);
  assert(0);
 }
 return rulenum;
}
