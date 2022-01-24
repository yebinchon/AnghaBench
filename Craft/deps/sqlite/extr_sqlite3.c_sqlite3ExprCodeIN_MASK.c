#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_14__ {int iTable; int /*<<< orphan*/  pLeft; } ;
struct TYPE_13__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int IN_INDEX_ROWID ; 
 int /*<<< orphan*/  OP_AddImm ; 
 int /*<<< orphan*/  OP_Affinity ; 
 int /*<<< orphan*/  OP_Found ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_If ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_IsNull ; 
 int /*<<< orphan*/  OP_MustBeInt ; 
 int /*<<< orphan*/  OP_NotExists ; 
 int /*<<< orphan*/  OP_NotFound ; 
 int /*<<< orphan*/  OP_NotNull ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*,int*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC16(
  Parse *pParse,        /* Parsing and code generating context */
  Expr *pExpr,          /* The IN expression */
  int destIfFalse,      /* Jump here if LHS is not contained in the RHS */
  int destIfNull        /* Jump here if the results are unknown due to NULLs */
){
  int rRhsHasNull = 0;  /* Register that is true if RHS contains NULL values */
  char affinity;        /* Comparison affinity to use */
  int eType;            /* Type of the RHS */
  int r1;               /* Temporary use register */
  Vdbe *v;              /* Statement under construction */

  /* Compute the RHS.   After this step, the table with cursor
  ** pExpr->iTable will contains the values that make up the RHS.
  */
  v = pParse->pVdbe;
  FUNC2( v!=0 );       /* OOM detected prior to this routine */
  FUNC1((v, "begin IN expr"));
  eType = FUNC7(pParse, pExpr, &rRhsHasNull);

  /* Figure out the affinity to use to create a key from the results
  ** of the expression. affinityStr stores a static string suitable for
  ** P4 of OP_MakeRecord.
  */
  affinity = FUNC3(pExpr);

  /* Code the LHS, the <expr> from "<expr> IN (...)".
  */
  FUNC5(pParse);
  r1 = FUNC8(pParse);
  FUNC6(pParse, pExpr->pLeft, r1);

  /* If the LHS is NULL, then the result is either false or NULL depending
  ** on whether the RHS is empty or not, respectively.
  */
  if( destIfNull==destIfFalse ){
    /* Shortcut for the common case where the false and NULL outcomes are
    ** the same. */
    FUNC11(v, OP_IsNull, r1, destIfNull);
  }else{
    int addr1 = FUNC10(v, OP_NotNull, r1);
    FUNC11(v, OP_Rewind, pExpr->iTable, destIfFalse);
    FUNC11(v, OP_Goto, 0, destIfNull);
    FUNC15(v, addr1);
  }

  if( eType==IN_INDEX_ROWID ){
    /* In this case, the RHS is the ROWID of table b-tree
    */
    FUNC11(v, OP_MustBeInt, r1, destIfFalse);
    FUNC12(v, OP_NotExists, pExpr->iTable, destIfFalse, r1);
  }else{
    /* In this case, the RHS is an index b-tree.
    */
    FUNC13(v, OP_Affinity, r1, 1, 0, &affinity, 1);

    /* If the set membership test fails, then the result of the 
    ** "x IN (...)" expression must be either 0 or NULL. If the set
    ** contains no NULL values, then the result is 0. If the set 
    ** contains one or more NULL values, then the result of the
    ** expression is also NULL.
    */
    if( rRhsHasNull==0 || destIfFalse==destIfNull ){
      /* This branch runs if it is known at compile time that the RHS
      ** cannot contain NULL values. This happens as the result
      ** of a "NOT NULL" constraint in the database schema.
      **
      ** Also run this branch if NULL is equivalent to FALSE
      ** for this particular IN operator.
      */
      FUNC14(v, OP_NotFound, pExpr->iTable, destIfFalse, r1, 1);

    }else{
      /* In this branch, the RHS of the IN might contain a NULL and
      ** the presence of a NULL on the RHS makes a difference in the
      ** outcome.
      */
      int j1, j2, j3;

      /* First check to see if the LHS is contained in the RHS.  If so,
      ** then the presence of NULLs in the RHS does not matter, so jump
      ** over all of the code that follows.
      */
      j1 = FUNC14(v, OP_Found, pExpr->iTable, 0, r1, 1);

      /* Here we begin generating code that runs if the LHS is not
      ** contained within the RHS.  Generate additional code that
      ** tests the RHS for NULLs.  If the RHS contains a NULL then
      ** jump to destIfNull.  If there are no NULLs in the RHS then
      ** jump to destIfFalse.
      */
      j2 = FUNC10(v, OP_NotNull, rRhsHasNull);
      j3 = FUNC14(v, OP_Found, pExpr->iTable, 0, rRhsHasNull, 1);
      FUNC11(v, OP_Integer, -1, rRhsHasNull);
      FUNC15(v, j3);
      FUNC11(v, OP_AddImm, rRhsHasNull, 1);
      FUNC15(v, j2);

      /* Jump to the appropriate target depending on whether or not
      ** the RHS contains a NULL
      */
      FUNC11(v, OP_If, rRhsHasNull, destIfNull);
      FUNC11(v, OP_Goto, 0, destIfFalse);

      /* The OP_Found at the top of this branch jumps here when true, 
      ** causing the overall IN expression evaluation to fall through.
      */
      FUNC15(v, j1);
    }
  }
  FUNC9(pParse, r1);
  FUNC4(pParse, 1);
  FUNC0((v, "end IN expr"));
}