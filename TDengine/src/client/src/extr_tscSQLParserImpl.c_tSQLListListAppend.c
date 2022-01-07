
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nAlloc; int nList; int ** a; } ;
typedef TYPE_1__ tSQLExprListList ;
typedef int tSQLExprList ;


 int assert (int) ;
 TYPE_1__* calloc (int,int) ;
 int ** realloc (int **,int) ;

tSQLExprListList *tSQLListListAppend(tSQLExprListList *pList, tSQLExprList *pExprList) {
  if (pList == ((void*)0)) pList = calloc(1, sizeof(tSQLExprListList));

  if (pList->nAlloc <= pList->nList) {
    pList->nAlloc = (pList->nAlloc << 1) + 4;
    pList->a = realloc(pList->a, pList->nAlloc * sizeof(pList->a[0]));
    if (pList->a == 0) {
      pList->nList = pList->nAlloc = 0;
      return pList;
    }
  }
  assert(pList->a != 0);

  if (pExprList) {
    pList->a[pList->nList++] = pExprList;
  }

  return pList;
}
