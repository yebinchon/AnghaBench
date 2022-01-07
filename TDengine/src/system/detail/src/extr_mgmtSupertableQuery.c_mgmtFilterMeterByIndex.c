
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tSQLBinaryExpr ;
typedef int tQueryResultset ;
typedef int int32_t ;
struct TYPE_8__ {TYPE_2__* pExtInfo; int setupInfoFn; int fp; } ;
struct TYPE_7__ {int numOfTags; int * pTagSchema; } ;
struct TYPE_6__ {int numOfColumns; int pSkipList; int numOfTags; int meterId; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSyntaxTreeFilterSupporter ;
typedef int SSchema ;
typedef TYPE_3__ SBinaryFilterSupp ;


 int TSDB_CODE_OPS_NOT_SUPPORT ;
 int TSDB_CODE_SUCCESS ;
 int filterPrepare ;
 int mError (char*,int ,char*) ;
 int tSQLBinaryExprDestroy (int **,int ) ;
 int tSQLBinaryExprFromString (int **,int *,int ,char*,int ) ;
 int tSQLBinaryExprTraverse (int *,int ,int *,TYPE_3__*) ;
 int tSQLListTraverseDestroyInfo ;
 int tSkipListNodeFilterCallback ;
 int tansformQueryResult (int *) ;
 int tfree (char*) ;

__attribute__((used)) static int32_t mgmtFilterMeterByIndex(STabObj* pMetric, tQueryResultset* pRes, char* pCond, int32_t condLen) {
  SSchema* pTagSchema = (SSchema*)(pMetric->schema + pMetric->numOfColumns * sizeof(SSchema));

  tSQLBinaryExpr* pExpr = ((void*)0);
  tSQLBinaryExprFromString(&pExpr, pTagSchema, pMetric->numOfTags, pCond, condLen);


  if (pExpr == ((void*)0)) {
    mError("metric:%s, no result returned, error in super table query expression:%s", pMetric->meterId, pCond);
    tfree(pCond);

    return TSDB_CODE_OPS_NOT_SUPPORT;
  } else {
    SSyntaxTreeFilterSupporter s = {.pTagSchema = pTagSchema, .numOfTags = pMetric->numOfTags};
    SBinaryFilterSupp supp = {.fp = tSkipListNodeFilterCallback, .setupInfoFn = filterPrepare, .pExtInfo = &s};

    tSQLBinaryExprTraverse(pExpr, pMetric->pSkipList, pRes, &supp);
    tSQLBinaryExprDestroy(&pExpr, tSQLListTraverseDestroyInfo);
  }

  tansformQueryResult(pRes);

  return TSDB_CODE_SUCCESS;
}
