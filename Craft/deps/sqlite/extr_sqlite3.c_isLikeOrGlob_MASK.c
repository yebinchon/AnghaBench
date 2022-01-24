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
typedef  int u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_19__ {char* zToken; } ;
struct TYPE_17__ {TYPE_5__* pList; } ;
struct TYPE_22__ {scalar_t__ op; int iColumn; int op2; TYPE_3__ u; int /*<<< orphan*/  pTab; TYPE_1__ x; } ;
struct TYPE_21__ {TYPE_2__* a; } ;
struct TYPE_20__ {int /*<<< orphan*/ * pVdbe; int /*<<< orphan*/ * pReprepare; int /*<<< orphan*/ * db; } ;
struct TYPE_18__ {TYPE_6__* pExpr; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ ExprList ;
typedef  TYPE_6__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQLITE_AFF_NONE ; 
 scalar_t__ SQLITE_AFF_TEXT ; 
 scalar_t__ SQLITE_TEXT ; 
 scalar_t__ TK_COLUMN ; 
 int TK_REGISTER ; 
 int TK_STRING ; 
 int TK_VARIABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_6__*,int) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_6__*,int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(
  Parse *pParse,    /* Parsing and code generating context */
  Expr *pExpr,      /* Test this expression */
  Expr **ppPrefix,  /* Pointer to TK_STRING expression with pattern prefix */
  int *pisComplete, /* True if the only wildcard is % in the last character */
  int *pnoCase      /* True if uppercase is equivalent to lowercase */
){
  const char *z = 0;         /* String on RHS of LIKE operator */
  Expr *pRight, *pLeft;      /* Right and left size of LIKE operator */
  ExprList *pList;           /* List of operands to the LIKE operator */
  int c;                     /* One character in z[] */
  int cnt;                   /* Number of non-wildcard prefix characters */
  char wc[3];                /* Wildcard characters */
  sqlite3 *db = pParse->db;  /* Database connection */
  sqlite3_value *pVal = 0;
  int op;                    /* Opcode of pRight */

  if( !FUNC6(db, pExpr, pnoCase, wc) ){
    return 0;
  }
#ifdef SQLITE_EBCDIC
  if( *pnoCase ) return 0;
#endif
  pList = pExpr->x.pList;
  pLeft = pList->a[1].pExpr;
  if( pLeft->op!=TK_COLUMN 
   || FUNC3(pLeft)!=SQLITE_AFF_TEXT 
   || FUNC0(pLeft->pTab)
  ){
    /* IMP: R-02065-49465 The left-hand side of the LIKE or GLOB operator must
    ** be the name of an indexed column with TEXT affinity. */
    return 0;
  }
  FUNC1( pLeft->iColumn!=(-1) ); /* Because IPK never has AFF_TEXT */

  pRight = pList->a[0].pExpr;
  op = pRight->op;
  if( op==TK_REGISTER ){
    op = pRight->op2;
  }
  if( op==TK_VARIABLE ){
    Vdbe *pReprepare = pParse->pReprepare;
    int iCol = pRight->iColumn;
    pVal = FUNC11(pReprepare, iCol, SQLITE_AFF_NONE);
    if( pVal && FUNC14(pVal)==SQLITE_TEXT ){
      z = (char *)FUNC13(pVal);
    }
    FUNC12(pParse->pVdbe, iCol);
    FUNC1( pRight->op==TK_VARIABLE || pRight->op==TK_REGISTER );
  }else if( op==TK_STRING ){
    z = pRight->u.zToken;
  }
  if( z ){
    cnt = 0;
    while( (c=z[cnt])!=0 && c!=wc[0] && c!=wc[1] && c!=wc[2] ){
      cnt++;
    }
    if( cnt!=0 && 255!=(u8)z[cnt-1] ){
      Expr *pPrefix;
      *pisComplete = c==wc[0] && z[cnt+1]==0;
      pPrefix = FUNC2(db, TK_STRING, z);
      if( pPrefix ) pPrefix->u.zToken[cnt] = 0;
      *ppPrefix = pPrefix;
      if( op==TK_VARIABLE ){
        Vdbe *v = pParse->pVdbe;
        FUNC12(v, pRight->iColumn);
        if( *pisComplete && pRight->u.zToken[1] ){
          /* If the rhs of the LIKE expression is a variable, and the current
          ** value of the variable means there is no need to invoke the LIKE
          ** function, then no OP_Variable will be added to the program.
          ** This causes problems for the sqlite3_bind_parameter_name()
          ** API. To workaround them, add a dummy OP_Variable here.
          */ 
          int r1 = FUNC5(pParse);
          FUNC4(pParse, pRight, r1);
          FUNC9(v, FUNC10(v)-1, 0);
          FUNC7(pParse, r1);
        }
      }
    }else{
      z = 0;
    }
  }

  FUNC8(pVal);
  return (z!=0);
}