
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_19__ {int op; TYPE_2__** kids; TYPE_5__** syms; } ;
struct TYPE_18__ {struct TYPE_18__* link; TYPE_8__** kids; int op; } ;
struct TYPE_15__ {int replace; TYPE_8__* cse; } ;
struct TYPE_16__ {TYPE_3__ t; } ;
struct TYPE_17__ {int defined; scalar_t__ sclass; TYPE_4__ u; scalar_t__ temporary; } ;
struct TYPE_14__ {int op; TYPE_1__** syms; } ;
struct TYPE_13__ {scalar_t__ sclass; } ;
struct TYPE_12__ {int (* local ) (TYPE_5__*) ;} ;
typedef TYPE_5__* Symbol ;
typedef TYPE_6__* Node ;


 scalar_t__ ADDRG ;
 scalar_t__ ADDRL ;
 scalar_t__ ASGN ;
 scalar_t__ AUTO ;
 scalar_t__ INDIR ;
 TYPE_11__* IR ;
 scalar_t__ REGISTER ;
 int assert (int ) ;
 scalar_t__ generic (int ) ;
 scalar_t__ isaddrop (int ) ;
 void* replace (TYPE_8__*) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static Node prune(Node forest) {
 Node p, *tail = &forest;
 int count = 0;

 for (p = forest; p; p = p->link) {
  if (count > 0) {
   p->kids[0] = replace(p->kids[0]);
   p->kids[1] = replace(p->kids[1]);
  }
  if (( generic(p->op) == ASGN
      && generic(p->kids[0]->op) == ADDRL
      && p->kids[0]->syms[0]->temporary
      && p->kids[0]->syms[0]->u.t.cse == p->kids[1])) {
   Symbol tmp = p->kids[0]->syms[0];
   if (!tmp->defined)
    (*IR->local)(tmp);
   tmp->defined = 1;
   if (( generic(p->kids[1]->op) == INDIR
       && isaddrop(p->kids[1]->kids[0]->op)
       && p->kids[1]->kids[0]->syms[0]->sclass == REGISTER)
   || (( generic(p->kids[1]->op) == INDIR
       && isaddrop(p->kids[1]->kids[0]->op)) && tmp->sclass == AUTO)
   || (generic(p->kids[1]->op) == ADDRG && tmp->sclass == AUTO)) {
    tmp->u.t.replace = 1;
    count++;
    continue;
   }
  }

  *tail = p;
  tail = &(*tail)->link;
 }
 assert(*tail == ((void*)0));
 return forest;
}
