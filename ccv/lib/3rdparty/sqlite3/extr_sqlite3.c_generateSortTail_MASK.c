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
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ iOrderByCol; } ;
struct TYPE_20__ {TYPE_2__ x; } ;
struct ExprList_item {scalar_t__ zSpan; scalar_t__ zName; TYPE_3__ u; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_25__ {int nExpr; } ;
struct TYPE_24__ {int nMem; int /*<<< orphan*/  nTab; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_23__ {int /*<<< orphan*/  iOffset; TYPE_1__* pEList; } ;
struct TYPE_22__ {int eDest; int iSDParm; int iSdst; int /*<<< orphan*/  zAffSdst; } ;
struct TYPE_21__ {int labelDone; int labelBkOut; int regReturn; int iECursor; int nOBSat; int sortFlags; TYPE_8__* pOrderBy; } ;
struct TYPE_18__ {struct ExprList_item* a; } ;
typedef  TYPE_4__ SortCtx ;
typedef  TYPE_5__ SelectDest ;
typedef  TYPE_6__ Select ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_APPEND ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Gosub ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_Once ; 
 int /*<<< orphan*/  OP_OpenPseudo ; 
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  OP_Sort ; 
 int /*<<< orphan*/  OP_SorterData ; 
 int /*<<< orphan*/  OP_SorterNext ; 
 int /*<<< orphan*/  OP_SorterSort ; 
 int /*<<< orphan*/  OP_Yield ; 
 int SORTFLAG_UseSorter ; 
 int SRT_Coroutine ; 
#define  SRT_EphemTab 131 
#define  SRT_Mem 130 
 int SRT_Output ; 
#define  SRT_Set 129 
#define  SRT_Table 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int,int) ; 
 int FUNC5 (TYPE_7__*,int) ; 
 int FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

__attribute__((used)) static void FUNC22(
  Parse *pParse,    /* Parsing context */
  Select *p,        /* The SELECT statement */
  SortCtx *pSort,   /* Information on the ORDER BY clause */
  int nColumn,      /* Number of columns of data */
  SelectDest *pDest /* Write the sorted results here */
){
  Vdbe *v = pParse->pVdbe;                     /* The prepared statement */
  int addrBreak = pSort->labelDone;            /* Jump here to exit loop */
  int addrContinue = FUNC19(v);  /* Jump here for next cycle */
  int addr;
  int addrOnce = 0;
  int iTab;
  ExprList *pOrderBy = pSort->pOrderBy;
  int eDest = pDest->eDest;
  int iParm = pDest->iSDParm;
  int regRow;
  int regRowid;
  int iCol;
  int nKey;
  int iSortTab;                   /* Sorter cursor to read from */
  int nSortData;                  /* Trailing values to read from sorter */
  int i;
  int bSeq;                       /* True if sorter record includes seq. no. */
  struct ExprList_item *aOutEx = p->pEList->a;

  FUNC2( addrBreak<0 );
  if( pSort->labelBkOut ){
    FUNC12(v, OP_Gosub, pSort->regReturn, pSort->labelBkOut);
    FUNC17(v, addrBreak);
    FUNC20(v, pSort->labelBkOut);
  }
  iTab = pSort->iECursor;
  if( eDest==SRT_Output || eDest==SRT_Coroutine || eDest==SRT_Mem ){
    regRowid = 0;
    regRow = pDest->iSdst;
    nSortData = nColumn;
  }else{
    regRowid = FUNC6(pParse);
    regRow = FUNC5(pParse, nColumn);
    nSortData = nColumn;
  }
  nKey = pOrderBy->nExpr - pSort->nOBSat;
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    int regSortOut = ++pParse->nMem;
    iSortTab = pParse->nTab++;
    if( pSort->labelBkOut ){
      addrOnce = FUNC10(v, OP_Once); FUNC1(v);
    }
    FUNC13(v, OP_OpenPseudo, iSortTab, regSortOut, nKey+1+nSortData);
    if( addrOnce ) FUNC18(v, addrOnce);
    addr = 1 + FUNC12(v, OP_SorterSort, iTab, addrBreak);
    FUNC1(v);
    FUNC3(v, p->iOffset, addrContinue);
    FUNC13(v, OP_SorterData, iTab, regSortOut, iSortTab);
    bSeq = 0;
  }else{
    addr = 1 + FUNC12(v, OP_Sort, iTab, addrBreak); FUNC1(v);
    FUNC3(v, p->iOffset, addrContinue);
    iSortTab = iTab;
    bSeq = 1;
  }
  for(i=0, iCol=nKey+bSeq-1; i<nSortData; i++){
    if( aOutEx[i].u.x.iOrderByCol==0 ) iCol++;
  }
  for(i=nSortData-1; i>=0; i--){
    int iRead;
    if( aOutEx[i].u.x.iOrderByCol ){
      iRead = aOutEx[i].u.x.iOrderByCol-1;
    }else{
      iRead = iCol--;
    }
    FUNC13(v, OP_Column, iSortTab, iRead, regRow+i);
    FUNC0((v, "%s", aOutEx[i].zName ? aOutEx[i].zName : aOutEx[i].zSpan));
  }
  switch( eDest ){
    case SRT_Table:
    case SRT_EphemTab: {
      FUNC12(v, OP_NewRowid, iParm, regRowid);
      FUNC13(v, OP_Insert, iParm, regRow, regRowid);
      FUNC16(v, OPFLAG_APPEND);
      break;
    }
#ifndef SQLITE_OMIT_SUBQUERY
    case SRT_Set: {
      FUNC2( nColumn==FUNC9(pDest->zAffSdst) );
      FUNC14(v, OP_MakeRecord, regRow, nColumn, regRowid,
                        pDest->zAffSdst, nColumn);
      FUNC4(pParse, regRow, nColumn);
      FUNC15(v, OP_IdxInsert, iParm, regRowid, regRow, nColumn);
      break;
    }
    case SRT_Mem: {
      /* The LIMIT clause will terminate the loop for us */
      break;
    }
#endif
    default: {
      FUNC2( eDest==SRT_Output || eDest==SRT_Coroutine ); 
      FUNC21( eDest==SRT_Output );
      FUNC21( eDest==SRT_Coroutine );
      if( eDest==SRT_Output ){
        FUNC12(v, OP_ResultRow, pDest->iSdst, nColumn);
        FUNC4(pParse, pDest->iSdst, nColumn);
      }else{
        FUNC11(v, OP_Yield, pDest->iSDParm);
      }
      break;
    }
  }
  if( regRowid ){
    if( eDest==SRT_Set ){
      FUNC7(pParse, regRow, nColumn);
    }else{
      FUNC8(pParse, regRow);
    }
    FUNC8(pParse, regRowid);
  }
  /* The bottom of the loop
  */
  FUNC20(v, addrContinue);
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    FUNC12(v, OP_SorterNext, iTab, addr); FUNC1(v);
  }else{
    FUNC12(v, OP_Next, iTab, addr); FUNC1(v);
  }
  if( pSort->regReturn ) FUNC11(v, OP_Return, pSort->regReturn);
  FUNC20(v, addrBreak);
}