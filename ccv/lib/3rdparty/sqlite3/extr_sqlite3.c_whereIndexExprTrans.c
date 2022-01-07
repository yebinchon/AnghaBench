
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int w ;
struct TYPE_15__ {int pResultSet; int pOrderBy; int pWhere; } ;
typedef TYPE_3__ WhereInfo ;
struct TYPE_13__ {TYPE_6__* pIdxTrans; } ;
struct TYPE_16__ {TYPE_1__ u; int xExprCallback; } ;
typedef TYPE_4__ Walker ;
struct TYPE_19__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_18__ {int iTabCur; int iIdxCur; int iIdxCol; scalar_t__ pIdxExpr; } ;
struct TYPE_17__ {scalar_t__* aiColumn; TYPE_7__* aColExpr; } ;
struct TYPE_14__ {scalar_t__ pExpr; } ;
typedef TYPE_5__ Index ;
typedef TYPE_6__ IdxExprTrans ;
typedef TYPE_7__ ExprList ;


 scalar_t__ XN_EXPR ;
 int assert (int) ;
 int memset (TYPE_4__*,int ,int) ;
 int sqlite3WalkExpr (TYPE_4__*,int ) ;
 int sqlite3WalkExprList (TYPE_4__*,int ) ;
 int whereIndexExprTransNode ;

__attribute__((used)) static void whereIndexExprTrans(
  Index *pIdx,
  int iTabCur,
  int iIdxCur,
  WhereInfo *pWInfo
){
  int iIdxCol;
  ExprList *aColExpr;
  Walker w;
  IdxExprTrans x;
  aColExpr = pIdx->aColExpr;
  if( aColExpr==0 ) return;
  memset(&w, 0, sizeof(w));
  w.xExprCallback = whereIndexExprTransNode;
  w.u.pIdxTrans = &x;
  x.iTabCur = iTabCur;
  x.iIdxCur = iIdxCur;
  for(iIdxCol=0; iIdxCol<aColExpr->nExpr; iIdxCol++){
    if( pIdx->aiColumn[iIdxCol]!=XN_EXPR ) continue;
    assert( aColExpr->a[iIdxCol].pExpr!=0 );
    x.iIdxCol = iIdxCol;
    x.pIdxExpr = aColExpr->a[iIdxCol].pExpr;
    sqlite3WalkExpr(&w, pWInfo->pWhere);
    sqlite3WalkExprList(&w, pWInfo->pOrderBy);
    sqlite3WalkExprList(&w, pWInfo->pResultSet);
  }
}
