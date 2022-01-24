#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ExprList_item {int /*<<< orphan*/  pExpr; } ;
struct AggInfo_func {scalar_t__ iDistinct; TYPE_8__* pFunc; int /*<<< orphan*/  iMem; TYPE_18__* pExpr; } ;
struct AggInfo_col {int /*<<< orphan*/  iMem; int /*<<< orphan*/  pExpr; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_25__ {int funcFlags; } ;
struct TYPE_24__ {int directMode; int nFunc; int nAccumulator; struct AggInfo_col* aCol; struct AggInfo_func* aFunc; } ;
struct TYPE_23__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_22__ {int nMem; TYPE_2__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_21__ {int /*<<< orphan*/ * pDfltColl; } ;
struct TYPE_20__ {TYPE_4__* pList; } ;
struct TYPE_19__ {TYPE_1__ x; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ ExprList ;
typedef  int /*<<< orphan*/  CollSeq ;
typedef  TYPE_5__ AggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_18__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_AggStep0 ; 
 int /*<<< orphan*/  OP_CollSeq ; 
 int /*<<< orphan*/  OP_If ; 
 int /*<<< orphan*/  P4_COLLSEQ ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int /*<<< orphan*/  SQLITE_ECEL_DUP ; 
 int SQLITE_FUNC_NEEDCOLL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  int regHit = 0;
  int addrHitTest = 0;
  struct AggInfo_func *pF;
  struct AggInfo_col *pC;

  pAggInfo->directMode = 1;
  for(i=0, pF=pAggInfo->aFunc; i<pAggInfo->nFunc; i++, pF++){
    int nArg;
    int addrNext = 0;
    int regAgg;
    ExprList *pList = pF->pExpr->x.pList;
    FUNC2( !FUNC0(pF->pExpr, EP_xIsSelect) );
    if( pList ){
      nArg = pList->nExpr;
      regAgg = FUNC9(pParse, nArg);
      FUNC7(pParse, pList, regAgg, 0, SQLITE_ECEL_DUP);
    }else{
      nArg = 0;
      regAgg = 0;
    }
    if( pF->iDistinct>=0 ){
      addrNext = FUNC17(v);
      FUNC19( nArg==0 );  /* Error condition */
      FUNC19( nArg>1 );   /* Also an error */
      FUNC3(pParse, pF->iDistinct, addrNext, 1, regAgg);
    }
    if( pF->pFunc->funcFlags & SQLITE_FUNC_NEEDCOLL ){
      CollSeq *pColl = 0;
      struct ExprList_item *pItem;
      int j;
      FUNC2( pList!=0 );  /* pList!=0 if pF->pFunc has NEEDCOLL */
      for(j=0, pItem=pList->a; !pColl && j<nArg; j++, pItem++){
        pColl = FUNC8(pParse, pItem->pExpr);
      }
      if( !pColl ){
        pColl = pParse->db->pDfltColl;
      }
      if( regHit==0 && pAggInfo->nAccumulator ) regHit = ++pParse->nMem;
      FUNC13(v, OP_CollSeq, regHit, 0, 0, (char *)pColl, P4_COLLSEQ);
    }
    FUNC12(v, OP_AggStep0, 0, regAgg, pF->iMem);
    FUNC14(v, pF->pFunc, P4_FUNCDEF);
    FUNC15(v, (u8)nArg);
    FUNC4(pParse, regAgg, nArg);
    FUNC10(pParse, regAgg, nArg);
    if( addrNext ){
      FUNC18(v, addrNext);
      FUNC5(pParse);
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
    addrHitTest = FUNC11(v, OP_If, regHit); FUNC1(v);
  }
  FUNC5(pParse);
  for(i=0, pC=pAggInfo->aCol; i<pAggInfo->nAccumulator; i++, pC++){
    FUNC6(pParse, pC->pExpr, pC->iMem);
  }
  pAggInfo->directMode = 0;
  FUNC5(pParse);
  if( addrHitTest ){
    FUNC16(v, addrHitTest);
  }
}