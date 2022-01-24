#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ValueNewStat4Ctx {TYPE_3__* pParse; } ;
struct TYPE_21__ {double r; scalar_t__ i; } ;
struct TYPE_24__ {int flags; TYPE_1__ u; } ;
typedef  TYPE_4__ sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int i64 ;
struct TYPE_22__ {char* zToken; scalar_t__ iValue; } ;
struct TYPE_25__ {int op; int op2; int flags; TYPE_2__ u; struct TYPE_25__* pLeft; } ;
struct TYPE_23__ {scalar_t__ nErr; } ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_IntValue ; 
 int EP_TokenOnly ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int MEM_Int ; 
 int MEM_Real ; 
 int MEM_Str ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ SMALLEST_INT64 ; 
 int /*<<< orphan*/  SQLITE_AFF_BLOB ; 
 int /*<<< orphan*/  SQLITE_AFF_NUMERIC ; 
 int /*<<< orphan*/  SQLITE_DYNAMIC ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int TK_BLOB ; 
 int TK_CAST ; 
 int TK_FLOAT ; 
 int TK_FUNCTION ; 
 int TK_INTEGER ; 
 int TK_NULL ; 
 int TK_REGISTER ; 
 int TK_SPAN ; 
 int TK_STRING ; 
 int TK_UMINUS ; 
 int TK_UPLUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**,struct ValueNewStat4Ctx*) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ *,struct ValueNewStat4Ctx*) ; 

__attribute__((used)) static int FUNC21(
  sqlite3 *db,                    /* The database connection */
  Expr *pExpr,                    /* The expression to evaluate */
  u8 enc,                         /* Encoding to use */
  u8 affinity,                    /* Affinity to use */
  sqlite3_value **ppVal,          /* Write the new value here */
  struct ValueNewStat4Ctx *pCtx   /* Second argument for valueNew() */
){
  int op;
  char *zVal = 0;
  sqlite3_value *pVal = 0;
  int negInt = 1;
  const char *zNeg = "";
  int rc = SQLITE_OK;

  FUNC3( pExpr!=0 );
  while( (op = pExpr->op)==TK_UPLUS || op==TK_SPAN ) pExpr = pExpr->pLeft;
#if defined(SQLITE_ENABLE_STAT3_OR_STAT4)
  if( op==TK_REGISTER ) op = pExpr->op2;
#else
  if( FUNC2(op==TK_REGISTER) ) op = pExpr->op2;
#endif

  /* Compressed expressions only appear when parsing the DEFAULT clause
  ** on a table column definition, and hence only when pCtx==0.  This
  ** check ensures that an EP_TokenOnly expression is never passed down
  ** into valueFromFunction(). */
  FUNC3( (pExpr->flags & EP_TokenOnly)==0 || pCtx==0 );

  if( op==TK_CAST ){
    u8 aff = FUNC4(pExpr->u.zToken,0);
    rc = FUNC21(db, pExpr->pLeft, enc, aff, ppVal, pCtx);
    FUNC18( rc!=SQLITE_OK );
    if( *ppVal ){
      FUNC14(*ppVal, aff, SQLITE_UTF8);
      FUNC10(*ppVal, affinity, SQLITE_UTF8);
    }
    return rc;
  }

  /* Handle negative integers in a single step.  This is needed in the
  ** case when the value is -9223372036854775808.
  */
  if( op==TK_UMINUS
   && (pExpr->pLeft->op==TK_INTEGER || pExpr->pLeft->op==TK_FLOAT) ){
    pExpr = pExpr->pLeft;
    op = pExpr->op;
    negInt = -1;
    zNeg = "-";
  }

  if( op==TK_STRING || op==TK_FLOAT || op==TK_INTEGER ){
    pVal = FUNC20(db, pCtx);
    if( pVal==0 ) goto no_mem;
    if( FUNC0(pExpr, EP_IntValue) ){
      FUNC16(pVal, (i64)pExpr->u.iValue*negInt);
    }else{
      zVal = FUNC7(db, "%s%s", zNeg, pExpr->u.zToken);
      if( zVal==0 ) goto no_mem;
      FUNC12(pVal, -1, zVal, SQLITE_UTF8, SQLITE_DYNAMIC);
    }
    if( (op==TK_INTEGER || op==TK_FLOAT ) && affinity==SQLITE_AFF_BLOB ){
      FUNC10(pVal, SQLITE_AFF_NUMERIC, SQLITE_UTF8);
    }else{
      FUNC10(pVal, affinity, SQLITE_UTF8);
    }
    if( pVal->flags & (MEM_Int|MEM_Real) ) pVal->flags &= ~MEM_Str;
    if( enc!=SQLITE_UTF8 ){
      rc = FUNC13(pVal, enc);
    }
  }else if( op==TK_UMINUS ) {
    /* This branch happens for multiple negative signs.  Ex: -(-5) */
    if( SQLITE_OK==FUNC21(db,pExpr->pLeft,enc,affinity,&pVal,pCtx) 
     && pVal!=0
    ){
      FUNC15(pVal);
      if( pVal->flags & MEM_Real ){
        pVal->u.r = -pVal->u.r;
      }else if( pVal->u.i==SMALLEST_INT64 ){
        pVal->u.r = -(double)SMALLEST_INT64;
        FUNC1(pVal, MEM_Real);
      }else{
        pVal->u.i = -pVal->u.i;
      }
      FUNC10(pVal, affinity, enc);
    }
  }else if( op==TK_NULL ){
    pVal = FUNC20(db, pCtx);
    if( pVal==0 ) goto no_mem;
    FUNC15(pVal);
  }
#ifndef SQLITE_OMIT_BLOB_LITERAL
  else if( op==TK_BLOB ){
    int nVal;
    FUNC3( pExpr->u.zToken[0]=='x' || pExpr->u.zToken[0]=='X' );
    FUNC3( pExpr->u.zToken[1]=='\'' );
    pVal = FUNC20(db, pCtx);
    if( !pVal ) goto no_mem;
    zVal = &pExpr->u.zToken[2];
    nVal = FUNC9(zVal)-1;
    FUNC3( zVal[nVal]=='\'' );
    FUNC17(pVal, FUNC6(db, zVal, nVal), nVal/2,
                         0, SQLITE_DYNAMIC);
  }
#endif

#ifdef SQLITE_ENABLE_STAT3_OR_STAT4
  else if( op==TK_FUNCTION && pCtx!=0 ){
    rc = valueFromFunction(db, pExpr, enc, affinity, &pVal, pCtx);
  }
#endif

  *ppVal = pVal;
  return rc;

no_mem:
#ifdef SQLITE_ENABLE_STAT3_OR_STAT4
  if( pCtx==0 || pCtx->pParse->nErr==0 )
#endif
    FUNC8(db);
  FUNC5(db, zVal);
  FUNC3( *ppVal==0 );
#ifdef SQLITE_ENABLE_STAT3_OR_STAT4
  if( pCtx==0 ) sqlite3ValueFree(pVal);
#else
  FUNC3( pCtx==0 ); FUNC11(pVal);
#endif
  return SQLITE_NOMEM_BKPT;
}