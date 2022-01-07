
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* stabtype ) (TYPE_1__*) ;int (* stabsym ) (TYPE_1__*) ;} ;
struct TYPE_6__ {scalar_t__ sclass; int type; } ;
typedef TYPE_1__* Symbol ;


 scalar_t__ EXTERN ;
 TYPE_5__* IR ;
 scalar_t__ STATIC ;
 scalar_t__ TYPEDEF ;
 int isfunc (int ) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void typestab(Symbol p, void *cl) {
 if (!isfunc(p->type) && (p->sclass == EXTERN || p->sclass == STATIC) && IR->stabsym)
  (*IR->stabsym)(p);
 else if ((p->sclass == TYPEDEF || p->sclass == 0) && IR->stabtype)
  (*IR->stabtype)(p);
}
