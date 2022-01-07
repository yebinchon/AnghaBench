
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_5__* Tree ;
struct TYPE_11__ {scalar_t__ op; TYPE_4__** kids; } ;
struct TYPE_10__ {scalar_t__ op; TYPE_3__** kids; } ;
struct TYPE_8__ {TYPE_1__* sym; } ;
struct TYPE_9__ {TYPE_2__ u; int op; } ;
struct TYPE_7__ {scalar_t__ temporary; } ;


 scalar_t__ B ;
 scalar_t__ CALL ;
 scalar_t__ INDIR ;
 scalar_t__ RIGHT ;
 scalar_t__ isaddrop (int ) ;

int iscallb(Tree e) {
 return e->op == RIGHT && e->kids[0] && e->kids[1]
  && e->kids[0]->op == CALL+B
  && e->kids[1]->op == INDIR+B
  && isaddrop(e->kids[1]->kids[0]->op)
  && e->kids[1]->kids[0]->u.sym->temporary;
}
