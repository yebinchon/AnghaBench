#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_22__ {TYPE_1__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_21__ {int iLimit; TYPE_3__* pEList; } ;
struct TYPE_20__ {int iSdst; int nSdst; int eDest; int iSDParm; char affSdst; } ;
struct TYPE_19__ {TYPE_2__* a; } ;
struct TYPE_18__ {int /*<<< orphan*/  pExpr; } ;
struct TYPE_17__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ SelectDest ;
typedef  TYPE_5__ Select ;
typedef  TYPE_6__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_APPEND ; 
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_IfNot ; 
 int /*<<< orphan*/  OP_IfZero ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  OP_Yield ; 
#define  SRT_Coroutine 133 
#define  SRT_EphemTab 132 
#define  SRT_Exists 131 
#define  SRT_Mem 130 
 int const SRT_Output ; 
#define  SRT_Set 129 
#define  SRT_Table 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 char FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int,int,int) ; 
 int FUNC5 (TYPE_6__*,int) ; 
 int FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(
  Parse *pParse,          /* Parsing context */
  Select *p,              /* The SELECT statement */
  SelectDest *pIn,        /* Coroutine supplying data */
  SelectDest *pDest,      /* Where to send the data */
  int regReturn,          /* The return address register */
  int regPrev,            /* Previous result register.  No uniqueness if 0 */
  KeyInfo *pKeyInfo,      /* For comparing with previous entry */
  int p4type,             /* The p4 type for pKeyInfo */
  int iBreak              /* Jump here if we hit the LIMIT */
){
  Vdbe *v = pParse->pVdbe;
  int iContinue;
  int addr;

  addr = FUNC13(v);
  iContinue = FUNC15(v);

  /* Suppress duplicates for UNION, EXCEPT, and INTERSECT 
  */
  if( regPrev ){
    int j1, j2;
    j1 = FUNC8(v, OP_IfNot, regPrev);
    j2 = FUNC11(v, OP_Compare, pIn->iSdst, regPrev+1, pIn->nSdst,
                              (char*)pKeyInfo, p4type);
    FUNC10(v, OP_Jump, j2+2, iContinue, j2+2);
    FUNC14(v, j1);
    FUNC10(v, OP_Copy, pIn->iSdst, regPrev+1, pIn->nSdst-1);
    FUNC9(v, OP_Integer, 1, regPrev);
  }
  if( pParse->db->mallocFailed ) return 0;

  /* Suppress the first OFFSET entries if there is an OFFSET clause
  */
  FUNC1(v, p, iContinue);

  switch( pDest->eDest ){
    /* Store the result as data using a unique key.
    */
    case SRT_Table:
    case SRT_EphemTab: {
      int r1 = FUNC6(pParse);
      int r2 = FUNC6(pParse);
      FUNC17( pDest->eDest==SRT_Table );
      FUNC17( pDest->eDest==SRT_EphemTab );
      FUNC10(v, OP_MakeRecord, pIn->iSdst, pIn->nSdst, r1);
      FUNC9(v, OP_NewRowid, pDest->iSDParm, r2);
      FUNC10(v, OP_Insert, pDest->iSDParm, r1, r2);
      FUNC12(v, OPFLAG_APPEND);
      FUNC7(pParse, r2);
      FUNC7(pParse, r1);
      break;
    }

#ifndef SQLITE_OMIT_SUBQUERY
    /* If we are creating a set for an "expr IN (SELECT ...)" construct,
    ** then there should be a single item on the stack.  Write this
    ** item into the set table with bogus data.
    */
    case SRT_Set: {
      int r1;
      FUNC0( pIn->nSdst==1 );
      pDest->affSdst = 
         FUNC2(p->pEList->a[0].pExpr, pDest->affSdst);
      r1 = FUNC6(pParse);
      FUNC11(v, OP_MakeRecord, pIn->iSdst, 1, r1, &pDest->affSdst,1);
      FUNC3(pParse, pIn->iSdst, 1);
      FUNC9(v, OP_IdxInsert, pDest->iSDParm, r1);
      FUNC7(pParse, r1);
      break;
    }

#if 0  /* Never occurs on an ORDER BY query */
    /* If any row exist in the result set, record that fact and abort.
    */
    case SRT_Exists: {
      sqlite3VdbeAddOp2(v, OP_Integer, 1, pDest->iSDParm);
      /* The LIMIT clause will terminate the loop for us */
      break;
    }
#endif

    /* If this is a scalar select that is part of an expression, then
    ** store the results in the appropriate memory cell and break out
    ** of the scan loop.
    */
    case SRT_Mem: {
      FUNC0( pIn->nSdst==1 );
      FUNC4(pParse, pIn->iSdst, pDest->iSDParm, 1);
      /* The LIMIT clause will jump out of the loop for us */
      break;
    }
#endif /* #ifndef SQLITE_OMIT_SUBQUERY */

    /* The results are stored in a sequence of registers
    ** starting at pDest->iSdst.  Then the co-routine yields.
    */
    case SRT_Coroutine: {
      if( pDest->iSdst==0 ){
        pDest->iSdst = FUNC5(pParse, pIn->nSdst);
        pDest->nSdst = pIn->nSdst;
      }
      FUNC4(pParse, pIn->iSdst, pDest->iSdst, pDest->nSdst);
      FUNC8(v, OP_Yield, pDest->iSDParm);
      break;
    }

    /* If none of the above, then the result destination must be
    ** SRT_Output.  This routine is never called with any other
    ** destination other than the ones handled above or SRT_Output.
    **
    ** For SRT_Output, results are stored in a sequence of registers.  
    ** Then the OP_ResultRow opcode is used to cause sqlite3_step() to
    ** return the next row of result.
    */
    default: {
      FUNC0( pDest->eDest==SRT_Output );
      FUNC9(v, OP_ResultRow, pIn->iSdst, pIn->nSdst);
      FUNC3(pParse, pIn->iSdst, pIn->nSdst);
      break;
    }
  }

  /* Jump to the end of the loop if the LIMIT is reached.
  */
  if( p->iLimit ){
    FUNC10(v, OP_IfZero, p->iLimit, iBreak, -1);
  }

  /* Generate the subroutine return
  */
  FUNC16(v, iContinue);
  FUNC8(v, OP_Return, regReturn);

  return addr;
}