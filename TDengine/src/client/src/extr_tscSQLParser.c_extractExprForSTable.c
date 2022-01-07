
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSQLExpr ;
typedef int int32_t ;
typedef int SSqlCmd ;


 int doCompactQueryExpr (int **) ;
 int doExtractExprForSTable (int **,int *,int **,int ) ;

__attribute__((used)) static tSQLExpr* extractExprForSTable(tSQLExpr** pExpr, SSqlCmd* pCmd, int32_t tableIndex) {
  tSQLExpr* pResExpr = ((void*)0);

  if (*pExpr != ((void*)0)) {
    doExtractExprForSTable(pExpr, pCmd, &pResExpr, tableIndex);
    doCompactQueryExpr(&pResExpr);
  }

  return pResExpr;
}
