#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct SrcList_item {int /*<<< orphan*/  iCursor; } ;
struct ExprList_item {TYPE_10__* pExpr; } ;
struct AggInfo_func {int iDistinct; int /*<<< orphan*/  pFunc; int /*<<< orphan*/  iMem; TYPE_10__* pExpr; } ;
struct AggInfo_col {int iSorterColumn; TYPE_10__* pExpr; int /*<<< orphan*/  iMem; int /*<<< orphan*/  iColumn; int /*<<< orphan*/  iTable; int /*<<< orphan*/  pTab; } ;
typedef  void* i16 ;
struct TYPE_23__ {TYPE_8__* pNC; } ;
struct TYPE_27__ {int /*<<< orphan*/  walkerDepth; TYPE_1__ u; } ;
typedef  TYPE_5__ Walker ;
struct TYPE_31__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_30__ {int ncFlags; TYPE_11__* pAggInfo; TYPE_6__* pSrcList; TYPE_7__* pParse; } ;
struct TYPE_29__ {int /*<<< orphan*/  nTab; int /*<<< orphan*/  db; int /*<<< orphan*/  nMem; } ;
struct TYPE_28__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_26__ {TYPE_3__* pList; } ;
struct TYPE_25__ {int /*<<< orphan*/  nExpr; } ;
struct TYPE_24__ {int /*<<< orphan*/  zToken; } ;
struct TYPE_22__ {int nColumn; int nFunc; struct AggInfo_func* aFunc; int /*<<< orphan*/  nSortingColumn; TYPE_9__* pGroupBy; struct AggInfo_col* aCol; } ;
struct TYPE_21__ {int op; int flags; TYPE_11__* pAggInfo; void* iAgg; TYPE_4__ x; TYPE_2__ u; int /*<<< orphan*/  op2; int /*<<< orphan*/  iColumn; int /*<<< orphan*/  iTable; int /*<<< orphan*/  pTab; } ;
typedef  TYPE_6__ SrcList ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ NameContext ;
typedef  TYPE_9__ ExprList ;
typedef  TYPE_10__ Expr ;
typedef  TYPE_11__ AggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EP_Distinct ; 
 int /*<<< orphan*/  EP_IntValue ; 
 int EP_Reduced ; 
 int EP_TokenOnly ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int NC_InAggFunc ; 
#define  TK_AGG_COLUMN 130 
#define  TK_AGG_FUNCTION 129 
#define  TK_COLUMN 128 
 int WRC_Continue ; 
 int WRC_Prune ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(Walker *pWalker, Expr *pExpr){
  int i;
  NameContext *pNC = pWalker->u.pNC;
  Parse *pParse = pNC->pParse;
  SrcList *pSrcList = pNC->pSrcList;
  AggInfo *pAggInfo = pNC->pAggInfo;

  switch( pExpr->op ){
    case TK_AGG_COLUMN:
    case TK_COLUMN: {
      FUNC11( pExpr->op==TK_AGG_COLUMN );
      FUNC11( pExpr->op==TK_COLUMN );
      /* Check to see if the column is in one of the tables in the FROM
      ** clause of the aggregate query */
      if( FUNC0(pSrcList!=0) ){
        struct SrcList_item *pItem = pSrcList->a;
        for(i=0; i<pSrcList->nSrc; i++, pItem++){
          struct AggInfo_col *pCol;
          FUNC7( !FUNC2(pExpr, EP_TokenOnly|EP_Reduced) );
          if( pExpr->iTable==pItem->iCursor ){
            /* If we reach this point, it means that pExpr refers to a table
            ** that is in the FROM clause of the aggregate query.  
            **
            ** Make an entry for the column in pAggInfo->aCol[] if there
            ** is not an entry there already.
            */
            int k;
            pCol = pAggInfo->aCol;
            for(k=0; k<pAggInfo->nColumn; k++, pCol++){
              if( pCol->iTable==pExpr->iTable &&
                  pCol->iColumn==pExpr->iColumn ){
                break;
              }
            }
            if( (k>=pAggInfo->nColumn)
             && (k = FUNC5(pParse->db, pAggInfo))>=0 
            ){
              pCol = &pAggInfo->aCol[k];
              pCol->pTab = pExpr->pTab;
              pCol->iTable = pExpr->iTable;
              pCol->iColumn = pExpr->iColumn;
              pCol->iMem = ++pParse->nMem;
              pCol->iSorterColumn = -1;
              pCol->pExpr = pExpr;
              if( pAggInfo->pGroupBy ){
                int j, n;
                ExprList *pGB = pAggInfo->pGroupBy;
                struct ExprList_item *pTerm = pGB->a;
                n = pGB->nExpr;
                for(j=0; j<n; j++, pTerm++){
                  Expr *pE = pTerm->pExpr;
                  if( pE->op==TK_COLUMN && pE->iTable==pExpr->iTable &&
                      pE->iColumn==pExpr->iColumn ){
                    pCol->iSorterColumn = j;
                    break;
                  }
                }
              }
              if( pCol->iSorterColumn<0 ){
                pCol->iSorterColumn = pAggInfo->nSortingColumn++;
              }
            }
            /* There is now an entry for pExpr in pAggInfo->aCol[] (either
            ** because it was there before or because we just created it).
            ** Convert the pExpr to be a TK_AGG_COLUMN referring to that
            ** pAggInfo->aCol[] entry.
            */
            FUNC4(pExpr);
            pExpr->pAggInfo = pAggInfo;
            pExpr->op = TK_AGG_COLUMN;
            pExpr->iAgg = (i16)k;
            break;
          } /* endif pExpr->iTable==pItem->iCursor */
        } /* end loop over pSrcList */
      }
      return WRC_Prune;
    }
    case TK_AGG_FUNCTION: {
      if( (pNC->ncFlags & NC_InAggFunc)==0
       && pWalker->walkerDepth==pExpr->op2
      ){
        /* Check to see if pExpr is a duplicate of another aggregate 
        ** function that is already in the pAggInfo structure
        */
        struct AggInfo_func *pItem = pAggInfo->aFunc;
        for(i=0; i<pAggInfo->nFunc; i++, pItem++){
          if( FUNC8(pItem->pExpr, pExpr)==0 ){
            break;
          }
        }
        if( i>=pAggInfo->nFunc ){
          /* pExpr is original.  Make a new entry in pAggInfo->aFunc[]
          */
          u8 enc = FUNC1(pParse->db);
          i = FUNC6(pParse->db, pAggInfo);
          if( i>=0 ){
            FUNC7( !FUNC3(pExpr, EP_xIsSelect) );
            pItem = &pAggInfo->aFunc[i];
            pItem->pExpr = pExpr;
            pItem->iMem = ++pParse->nMem;
            FUNC7( !FUNC3(pExpr, EP_IntValue) );
            pItem->pFunc = FUNC9(pParse->db,
                   pExpr->u.zToken, FUNC10(pExpr->u.zToken),
                   pExpr->x.pList ? pExpr->x.pList->nExpr : 0, enc, 0);
            if( pExpr->flags & EP_Distinct ){
              pItem->iDistinct = pParse->nTab++;
            }else{
              pItem->iDistinct = -1;
            }
          }
        }
        /* Make pExpr point to the appropriate pAggInfo->aFunc[] entry
        */
        FUNC7( !FUNC2(pExpr, EP_TokenOnly|EP_Reduced) );
        FUNC4(pExpr);
        pExpr->iAgg = (i16)i;
        pExpr->pAggInfo = pAggInfo;
        return WRC_Prune;
      }else{
        return WRC_Continue;
      }
    }
  }
  return WRC_Continue;
}