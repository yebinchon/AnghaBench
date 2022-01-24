#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_22__ {int iPKey; } ;
typedef  TYPE_1__ Table ;
struct TYPE_26__ {int mayAbort; } ;
struct TYPE_25__ {int isDeferred; int nCol; TYPE_1__* pFrom; } ;
struct TYPE_24__ {int tnum; int* aiColumn; } ;
struct TYPE_23__ {int nTab; int /*<<< orphan*/  isMultiWrite; int /*<<< orphan*/  pToplevel; } ;
typedef  TYPE_2__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_3__ Index ;
typedef  TYPE_4__ FKey ;

/* Variables and functions */
 int /*<<< orphan*/  OE_Abort ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Eq ; 
 int /*<<< orphan*/  OP_FkCounter ; 
 int /*<<< orphan*/  OP_FkIfZero ; 
 int /*<<< orphan*/  OP_Found ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_IsNull ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_MustBeInt ; 
 int /*<<< orphan*/  OP_Ne ; 
 int /*<<< orphan*/  OP_NotExists ; 
 int /*<<< orphan*/  OP_OpenRead ; 
 int /*<<< orphan*/  OP_SCopy ; 
 int /*<<< orphan*/  P4_KEYINFO_HANDOFF ; 
 int /*<<< orphan*/  P4_STATIC ; 
 int /*<<< orphan*/  P4_TRANSIENT ; 
 int /*<<< orphan*/  SQLITE_CONSTRAINT_FOREIGNKEY ; 
 int /*<<< orphan*/  SQLITE_JUMPIFNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC21(
  Parse *pParse,        /* Parse context */
  int iDb,              /* Index of database housing pTab */
  Table *pTab,          /* Parent table of FK pFKey */
  Index *pIdx,          /* Unique index on parent key columns in pTab */
  FKey *pFKey,          /* Foreign key constraint */
  int *aiCol,           /* Map from parent key columns to child table columns */
  int regData,          /* Address of array containing child table row */
  int nIncr,            /* Increment constraint counter by this */
  int isIgnore          /* If true, pretend pTab contains all NULL values */
){
  int i;                                    /* Iterator variable */
  Vdbe *v = FUNC3(pParse);         /* Vdbe to add code to */
  int iCur = pParse->nTab - 1;              /* Cursor number to use */
  int iOk = FUNC19(v);        /* jump here if parent key found */

  /* If nIncr is less than zero, then check at runtime if there are any
  ** outstanding constraints to resolve. If there are not, there is no need
  ** to check if deleting this row resolves any outstanding violations.
  **
  ** Check if any of the key columns in the child table row are NULL. If 
  ** any are, then the constraint is considered satisfied. No need to 
  ** search for a matching row in the parent table.  */
  if( nIncr<0 ){
    FUNC12(v, OP_FkIfZero, pFKey->isDeferred, iOk);
  }
  for(i=0; i<pFKey->nCol; i++){
    int iReg = aiCol[i] + regData + 1;
    FUNC12(v, OP_IsNull, iReg, iOk);
  }

  if( isIgnore==0 ){
    if( pIdx==0 ){
      /* If pIdx is NULL, then the parent key is the INTEGER PRIMARY KEY
      ** column of the parent table (table pTab).  */
      int iMustBeInt;               /* Address of MustBeInt instruction */
      int regTemp = FUNC2(pParse);
  
      /* Invoke MustBeInt to coerce the child key value to an integer (i.e. 
      ** apply the affinity of the parent key). If this fails, then there
      ** is no matching parent key. Before using MustBeInt, make a copy of
      ** the value. Otherwise, the value inserted into the child key column
      ** will have INTEGER affinity applied to it, which may not be correct.  */
      FUNC12(v, OP_SCopy, aiCol[0]+1+regData, regTemp);
      iMustBeInt = FUNC12(v, OP_MustBeInt, regTemp, 0);
  
      /* If the parent table is the same as the child table, and we are about
      ** to increment the constraint-counter (i.e. this is an INSERT operation),
      ** then check if the row being inserted matches itself. If so, do not
      ** increment the constraint-counter.  */
      if( pTab==pFKey->pFrom && nIncr==1 ){
        FUNC13(v, OP_Eq, regData, iOk, regTemp);
      }
  
      FUNC7(pParse, iCur, iDb, pTab, OP_OpenRead);
      FUNC13(v, OP_NotExists, iCur, 0, regTemp);
      FUNC12(v, OP_Goto, 0, iOk);
      FUNC18(v, FUNC17(v)-2);
      FUNC18(v, iMustBeInt);
      FUNC10(pParse, regTemp);
    }else{
      int nCol = pFKey->nCol;
      int regTemp = FUNC1(pParse, nCol);
      int regRec = FUNC2(pParse);
      KeyInfo *pKey = FUNC6(pParse, pIdx);
  
      FUNC13(v, OP_OpenRead, iCur, pIdx->tnum, iDb);
      FUNC15(v, -1, (char*)pKey, P4_KEYINFO_HANDOFF);
      for(i=0; i<nCol; i++){
        FUNC12(v, OP_Copy, aiCol[i]+1+regData, regTemp+i);
      }
  
      /* If the parent table is the same as the child table, and we are about
      ** to increment the constraint-counter (i.e. this is an INSERT operation),
      ** then check if the row being inserted matches itself. If so, do not
      ** increment the constraint-counter. 
      **
      ** If any of the parent-key values are NULL, then the row cannot match 
      ** itself. So set JUMPIFNULL to make sure we do the OP_Found if any
      ** of the parent-key values are NULL (at this point it is known that
      ** none of the child key values are).
      */
      if( pTab==pFKey->pFrom && nIncr==1 ){
        int iJump = FUNC17(v) + nCol + 1;
        for(i=0; i<nCol; i++){
          int iChild = aiCol[i]+1+regData;
          int iParent = pIdx->aiColumn[i]+1+regData;
          FUNC0( aiCol[i]!=pTab->iPKey );
          if( pIdx->aiColumn[i]==pTab->iPKey ){
            /* The parent key is a composite key that includes the IPK column */
            iParent = regData;
          }
          FUNC13(v, OP_Ne, iChild, iJump, iParent);
          FUNC16(v, SQLITE_JUMPIFNULL);
        }
        FUNC12(v, OP_Goto, 0, iOk);
      }
  
      FUNC13(v, OP_MakeRecord, regTemp, nCol, regRec);
      FUNC15(v, -1, FUNC5(v,pIdx), P4_TRANSIENT);
      FUNC14(v, OP_Found, iCur, iOk, regRec, 0);
  
      FUNC10(pParse, regRec);
      FUNC9(pParse, regTemp, nCol);
    }
  }

  if( !pFKey->isDeferred && !pParse->pToplevel && !pParse->isMultiWrite ){
    /* Special case: If this is an INSERT statement that will insert exactly
    ** one row into the table, raise a constraint immediately instead of
    ** incrementing a counter. This is necessary as the VM code is being
    ** generated for will not open a statement transaction.  */
    FUNC0( nIncr==1 );
    FUNC4(pParse, SQLITE_CONSTRAINT_FOREIGNKEY,
        OE_Abort, "foreign key constraint failed", P4_STATIC
    );
  }else{
    if( nIncr>0 && pFKey->isDeferred==0 ){
      FUNC8(pParse)->mayAbort = 1;
    }
    FUNC12(v, OP_FkCounter, pFKey->isDeferred, nIncr);
  }

  FUNC20(v, iOk);
  FUNC11(v, OP_Close, iCur);
}