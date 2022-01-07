
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tSQLExprList ;
struct TYPE_8__ {scalar_t__ nType; int i64Key; double dKey; } ;
struct TYPE_9__ {scalar_t__ nSQLOptr; struct TYPE_9__* pRight; struct TYPE_9__* pLeft; int * pParam; TYPE_1__ val; } ;
typedef TYPE_2__ tSQLExpr ;
typedef double int64_t ;
typedef int int32_t ;



 void* TK_FLOAT ;
 int TK_IN ;
 scalar_t__ TK_INTEGER ;



 int TK_SET ;

 scalar_t__ TK_TIMESTAMP ;
 scalar_t__ TSDB_DATA_TYPE_BIGINT ;
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ;
 TYPE_2__* calloc (int,int) ;
 int tSQLExprDestroy (TYPE_2__*) ;

tSQLExpr *tSQLExprCreate(tSQLExpr *pLeft, tSQLExpr *pRight, int32_t optrType) {
  tSQLExpr *pExpr = calloc(1, sizeof(tSQLExpr));

  if (optrType == 130 || optrType == 131 || optrType == 128 || optrType == 132 ||
      optrType == 129) {




    if ((pLeft->nSQLOptr == TK_INTEGER && pRight->nSQLOptr == TK_INTEGER) ||
        (pLeft->nSQLOptr == TK_TIMESTAMP && pRight->nSQLOptr == TK_TIMESTAMP)) {
      pExpr->val.nType = TSDB_DATA_TYPE_BIGINT;
      pExpr->nSQLOptr = pLeft->nSQLOptr;

      switch (optrType) {
        case 130: {
          pExpr->val.i64Key = pLeft->val.i64Key + pRight->val.i64Key;
          break;
        }
        case 131: {
          pExpr->val.i64Key = pLeft->val.i64Key - pRight->val.i64Key;
          break;
        }
        case 128: {
          pExpr->val.i64Key = pLeft->val.i64Key * pRight->val.i64Key;
          break;
        }
        case 132: {
          pExpr->nSQLOptr = TK_FLOAT;
          pExpr->val.nType = TSDB_DATA_TYPE_DOUBLE;
          pExpr->val.dKey = (double)pLeft->val.i64Key / pRight->val.i64Key;
          break;
        }
        case 129: {
          pExpr->val.i64Key = pLeft->val.i64Key % pRight->val.i64Key;
          break;
        }
      }

      tSQLExprDestroy(pLeft);
      tSQLExprDestroy(pRight);

    } else if ((pLeft->val.nType == TSDB_DATA_TYPE_DOUBLE && pRight->val.nType == TSDB_DATA_TYPE_BIGINT) ||
               (pRight->val.nType == TSDB_DATA_TYPE_DOUBLE && pLeft->val.nType == TSDB_DATA_TYPE_BIGINT)) {
      pExpr->val.nType = TSDB_DATA_TYPE_DOUBLE;
      pExpr->nSQLOptr = TK_FLOAT;

      double left = pLeft->val.nType == TSDB_DATA_TYPE_DOUBLE ? pLeft->val.dKey : pLeft->val.i64Key;
      double right = pRight->val.nType == TSDB_DATA_TYPE_DOUBLE ? pRight->val.dKey : pRight->val.i64Key;

      switch (optrType) {
        case 130: {
          pExpr->val.dKey = left + right;
          break;
        }
        case 131: {
          pExpr->val.dKey = left - right;
          break;
        }
        case 128: {
          pExpr->val.dKey = left * right;
          break;
        }
        case 132: {
          pExpr->val.dKey = left / right;
          break;
        }
        case 129: {
          pExpr->val.dKey = left - ((int64_t)(left / right)) * right;
          break;
        }
      }

      tSQLExprDestroy(pLeft);
      tSQLExprDestroy(pRight);

    } else {
      pExpr->nSQLOptr = optrType;
      pExpr->pLeft = pLeft;
      pExpr->pRight = pRight;
    }
  } else if (optrType == TK_IN) {
    pExpr->nSQLOptr = optrType;
    pExpr->pLeft = pLeft;

    tSQLExpr *pRSub = calloc(1, sizeof(tSQLExpr));
    pRSub->nSQLOptr = TK_SET;
    pRSub->pParam = (tSQLExprList *)pRight;

    pExpr->pRight = pRSub;
  } else {
    pExpr->nSQLOptr = optrType;
    pExpr->pLeft = pLeft;
    pExpr->pRight = pRight;
  }

  return pExpr;
}
