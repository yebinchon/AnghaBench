#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ExprList_item {int /*<<< orphan*/  pExpr; } ;
struct AggInfo_func {scalar_t__ iDistinct; TYPE_3__* pFunc; int /*<<< orphan*/  iMem; TYPE_18__* pExpr; } ;
struct AggInfo_col {int /*<<< orphan*/  iMem; int /*<<< orphan*/  pExpr; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_25__ {int directMode; int nFunc; int nAccumulator; struct AggInfo_col* aCol; struct AggInfo_func* aFunc; } ;
struct TYPE_24__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_23__ {int nMem; TYPE_2__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_22__ {int flags; } ;
struct TYPE_21__ {int /*<<< orphan*/ * pDfltColl; } ;
struct TYPE_20__ {TYPE_5__* pList; } ;
struct TYPE_19__ {TYPE_1__ x; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ ExprList ;
typedef  int /*<<< orphan*/  CollSeq ;
typedef  TYPE_6__ AggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_18__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_AggStep ; 
 int /*<<< orphan*/  OP_CollSeq ; 
 int /*<<< orphan*/  OP_If ; 
 int /*<<< orphan*/  P4_COLLSEQ ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int SQLITE_FUNC_NEEDCOLL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC16(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  int regHit = 0;
  int addrHitTest = 0;
  struct AggInfo_func *pF;
  struct AggInfo_col *pC;

  pAggInfo->directMode = 1;
  FUNC4(pParse);
  for(i=0, pF=pAggInfo->aFunc; i<pAggInfo->nFunc; i++, pF++){
    int nArg;
    int addrNext = 0;
    int regAgg;
    ExprList *pList = pF->pExpr->x.pList;
    FUNC1( !FUNC0(pF->pExpr, EP_xIsSelect) );
    if( pList ){
      nArg = pList->nExpr;
      regAgg = FUNC8(pParse, nArg);
      FUNC6(pParse, pList, regAgg, 1);
    }else{
      nArg = 0;
      regAgg = 0;
    }
    if( pF->iDistinct>=0 ){
      addrNext = FUNC14(v);
      FUNC1( nArg==1 );
      FUNC2(pParse, pF->iDistinct, addrNext, 1, regAgg);
    }
    if( pF->pFunc->flags & SQLITE_FUNC_NEEDCOLL ){
      CollSeq *pColl = 0;
      struct ExprList_item *pItem;
      int j;
      FUNC1( pList!=0 );  /* pList!=0 if pF->pFunc has NEEDCOLL */
      for(j=0, pItem=pList->a; !pColl && j<nArg; j++, pItem++){
        pColl = FUNC7(pParse, pItem->pExpr);
      }
      if( !pColl ){
        pColl = pParse->db->pDfltColl;
      }
      if( regHit==0 && pAggInfo->nAccumulator ) regHit = ++pParse->nMem;
      FUNC11(v, OP_CollSeq, regHit, 0, 0, (char *)pColl, P4_COLLSEQ);
    }
    FUNC11(v, OP_AggStep, 0, regAgg, pF->iMem,
                      (void*)pF->pFunc, P4_FUNCDEF);
    FUNC12(v, (u8)nArg);
    FUNC3(pParse, regAgg, nArg);
    FUNC9(pParse, regAgg, nArg);
    if( addrNext ){
      FUNC15(v, addrNext);
      FUNC4(pParse);
    }
  }

  /* Before populating the accumulator registers, clear the column cache.
  ** Otherwise, if any of the required column values are already present 
  ** in registers, sqlite3ExprCode() may use OP_SCopy to copy the value
  ** to pC->iMem. But by the time the value is used, the original register
  ** may have been used, invalidating the underlying buffer holding the
  ** text or blob value. See ticket [883034dcb5].
  **
  ** Another solution would be to change the OP_SCopy used to copy cached
  ** values to an OP_Copy.
  */
  if( regHit ){
    addrHitTest = FUNC10(v, OP_If, regHit);
  }
  FUNC4(pParse);
  for(i=0, pC=pAggInfo->aCol; i<pAggInfo->nAccumulator; i++, pC++){
    FUNC5(pParse, pC->pExpr, pC->iMem);
  }
  pAggInfo->directMode = 0;
  FUNC4(pParse);
  if( addrHitTest ){
    FUNC13(v, addrHitTest);
  }
}