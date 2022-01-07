
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nExpr; struct TYPE_4__* a; int pNode; struct TYPE_4__* aliasName; } ;
typedef TYPE_1__ tSQLExprList ;
typedef size_t int32_t ;


 int free (TYPE_1__*) ;
 int tSQLExprDestroy (int ) ;

void tSQLExprListDestroy(tSQLExprList *pList) {
  if (pList == ((void*)0)) return;

  for (int32_t i = 0; i < pList->nExpr; ++i) {
    if (pList->a[i].aliasName != ((void*)0)) {
      free(pList->a[i].aliasName);
    }
    tSQLExprDestroy(pList->a[i].pNode);
  }

  free(pList->a);
  free(pList);
}
