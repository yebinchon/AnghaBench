
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
typedef int WhereTerm ;
struct TYPE_14__ {int* aiCur; int* aiColumn; int nEquiv; int iEquiv; scalar_t__ k; int opMask; scalar_t__ zCollName; scalar_t__ idxaff; scalar_t__ pIdxExpr; int * pWC; int * pOrigWC; } ;
typedef TYPE_5__ WhereScan ;
typedef int WhereClause ;
struct TYPE_15__ {int* aiColumn; scalar_t__* azColl; TYPE_4__* pTable; TYPE_2__* aColExpr; } ;
struct TYPE_13__ {int iPKey; TYPE_3__* aCol; } ;
struct TYPE_12__ {scalar_t__ affinity; } ;
struct TYPE_11__ {TYPE_1__* a; } ;
struct TYPE_10__ {scalar_t__ pExpr; } ;
typedef TYPE_6__ Index ;


 int XN_EXPR ;
 int XN_ROWID ;
 int * whereScanNext (TYPE_5__*) ;

__attribute__((used)) static WhereTerm *whereScanInit(
  WhereScan *pScan,
  WhereClause *pWC,
  int iCur,
  int iColumn,
  u32 opMask,
  Index *pIdx
){
  pScan->pOrigWC = pWC;
  pScan->pWC = pWC;
  pScan->pIdxExpr = 0;
  pScan->idxaff = 0;
  pScan->zCollName = 0;
  if( pIdx ){
    int j = iColumn;
    iColumn = pIdx->aiColumn[j];
    if( iColumn==XN_EXPR ){
      pScan->pIdxExpr = pIdx->aColExpr->a[j].pExpr;
      pScan->zCollName = pIdx->azColl[j];
    }else if( iColumn==pIdx->pTable->iPKey ){
      iColumn = XN_ROWID;
    }else if( iColumn>=0 ){
      pScan->idxaff = pIdx->pTable->aCol[iColumn].affinity;
      pScan->zCollName = pIdx->azColl[j];
    }
  }else if( iColumn==XN_EXPR ){
    return 0;
  }
  pScan->opMask = opMask;
  pScan->k = 0;
  pScan->aiCur[0] = iCur;
  pScan->aiColumn[0] = iColumn;
  pScan->nEquiv = 1;
  pScan->iEquiv = 1;
  return whereScanNext(pScan);
}
