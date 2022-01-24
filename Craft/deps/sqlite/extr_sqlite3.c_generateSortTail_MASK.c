#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_16__ {int iECursor; int nExpr; } ;
struct TYPE_15__ {int nMem; int /*<<< orphan*/  nTab; } ;
struct TYPE_14__ {int selFlags; TYPE_4__* pOrderBy; } ;
struct TYPE_13__ {int eDest; int iSDParm; int iSdst; int /*<<< orphan*/  affSdst; } ;
typedef  TYPE_1__ SelectDest ;
typedef  TYPE_2__ Select ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_APPEND ; 
 int /*<<< orphan*/  OPFLAG_CLEARCACHE ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_OpenPseudo ; 
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  OP_Sort ; 
 int /*<<< orphan*/  OP_SorterData ; 
 int /*<<< orphan*/  OP_SorterNext ; 
 int /*<<< orphan*/  OP_SorterSort ; 
 int /*<<< orphan*/  OP_Yield ; 
 int SF_UseSorter ; 
 int SRT_Coroutine ; 
#define  SRT_EphemTab 131 
#define  SRT_Mem 130 
 int SRT_Output ; 
#define  SRT_Set 129 
#define  SRT_Table 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,int) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(
  Parse *pParse,    /* Parsing context */
  Select *p,        /* The SELECT statement */
  Vdbe *v,          /* Generate code into this VDBE */
  int nColumn,      /* Number of columns of data */
  SelectDest *pDest /* Write the sorted results here */
){
  int addrBreak = FUNC11(v);     /* Jump here to exit loop */
  int addrContinue = FUNC11(v);  /* Jump here for next cycle */
  int addr;
  int iTab;
  int pseudoTab = 0;
  ExprList *pOrderBy = p->pOrderBy;

  int eDest = pDest->eDest;
  int iParm = pDest->iSDParm;

  int regRow;
  int regRowid;

  iTab = pOrderBy->iECursor;
  regRow = FUNC4(pParse);
  if( eDest==SRT_Output || eDest==SRT_Coroutine ){
    pseudoTab = pParse->nTab++;
    FUNC8(v, OP_OpenPseudo, pseudoTab, regRow, nColumn);
    regRowid = 0;
  }else{
    regRowid = FUNC4(pParse);
  }
  if( p->selFlags & SF_UseSorter ){
    int regSortOut = ++pParse->nMem;
    int ptab2 = pParse->nTab++;
    FUNC8(v, OP_OpenPseudo, ptab2, regSortOut, pOrderBy->nExpr+2);
    addr = 1 + FUNC7(v, OP_SorterSort, iTab, addrBreak);
    FUNC1(v, p, addrContinue);
    FUNC7(v, OP_SorterData, iTab, regSortOut);
    FUNC8(v, OP_Column, ptab2, pOrderBy->nExpr+1, regRow);
    FUNC10(v, OPFLAG_CLEARCACHE);
  }else{
    addr = 1 + FUNC7(v, OP_Sort, iTab, addrBreak);
    FUNC1(v, p, addrContinue);
    FUNC8(v, OP_Column, iTab, pOrderBy->nExpr+1, regRow);
  }
  switch( eDest ){
    case SRT_Table:
    case SRT_EphemTab: {
      FUNC13( eDest==SRT_Table );
      FUNC13( eDest==SRT_EphemTab );
      FUNC7(v, OP_NewRowid, iParm, regRowid);
      FUNC8(v, OP_Insert, iParm, regRow, regRowid);
      FUNC10(v, OPFLAG_APPEND);
      break;
    }
#ifndef SQLITE_OMIT_SUBQUERY
    case SRT_Set: {
      FUNC0( nColumn==1 );
      FUNC9(v, OP_MakeRecord, regRow, 1, regRowid,
                        &pDest->affSdst, 1);
      FUNC2(pParse, regRow, 1);
      FUNC7(v, OP_IdxInsert, iParm, regRowid);
      break;
    }
    case SRT_Mem: {
      FUNC0( nColumn==1 );
      FUNC3(pParse, regRow, iParm, 1);
      /* The LIMIT clause will terminate the loop for us */
      break;
    }
#endif
    default: {
      int i;
      FUNC0( eDest==SRT_Output || eDest==SRT_Coroutine ); 
      FUNC13( eDest==SRT_Output );
      FUNC13( eDest==SRT_Coroutine );
      for(i=0; i<nColumn; i++){
        FUNC0( regRow!=pDest->iSdst+i );
        FUNC8(v, OP_Column, pseudoTab, i, pDest->iSdst+i);
        if( i==0 ){
          FUNC10(v, OPFLAG_CLEARCACHE);
        }
      }
      if( eDest==SRT_Output ){
        FUNC7(v, OP_ResultRow, pDest->iSdst, nColumn);
        FUNC2(pParse, pDest->iSdst, nColumn);
      }else{
        FUNC6(v, OP_Yield, pDest->iSDParm);
      }
      break;
    }
  }
  FUNC5(pParse, regRow);
  FUNC5(pParse, regRowid);

  /* The bottom of the loop
  */
  FUNC12(v, addrContinue);
  if( p->selFlags & SF_UseSorter ){
    FUNC7(v, OP_SorterNext, iTab, addr);
  }else{
    FUNC7(v, OP_Next, iTab, addr);
  }
  FUNC12(v, addrBreak);
  if( eDest==SRT_Output || eDest==SRT_Coroutine ){
    FUNC7(v, OP_Close, pseudoTab, 0);
  }
}