
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fillType; int * from; int * pGroupby; int * pSortOrder; int * pWhere; int * pSelection; } ;
typedef TYPE_1__ SQuerySQL ;


 int free (TYPE_1__*) ;
 int tSQLExprDestroy (int *) ;
 int tSQLExprListDestroy (int *) ;
 int tVariantListDestroy (int *) ;

void destroyQuerySql(SQuerySQL *pSql) {
  if (pSql == ((void*)0)) return;

  tSQLExprListDestroy(pSql->pSelection);
  pSql->pSelection = ((void*)0);

  tSQLExprDestroy(pSql->pWhere);
  pSql->pWhere = ((void*)0);

  tVariantListDestroy(pSql->pSortOrder);
  pSql->pSortOrder = ((void*)0);

  tVariantListDestroy(pSql->pGroupby);
  pSql->pGroupby = ((void*)0);

  tVariantListDestroy(pSql->from);
  pSql->from = ((void*)0);

  tVariantListDestroy(pSql->fillType);

  free(pSql);
}
