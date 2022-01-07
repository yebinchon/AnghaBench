
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u8 ;
struct ValueNewStat4Ctx {TYPE_3__* pParse; } ;
struct TYPE_21__ {double r; scalar_t__ i; } ;
struct TYPE_24__ {int flags; TYPE_1__ u; } ;
typedef TYPE_4__ sqlite3_value ;
typedef int sqlite3 ;
typedef int i64 ;
struct TYPE_22__ {char* zToken; scalar_t__ iValue; } ;
struct TYPE_25__ {int op; int op2; int flags; TYPE_2__ u; struct TYPE_25__* pLeft; } ;
struct TYPE_23__ {scalar_t__ nErr; } ;
typedef TYPE_5__ Expr ;


 int EP_IntValue ;
 int EP_TokenOnly ;
 scalar_t__ ExprHasProperty (TYPE_5__*,int ) ;
 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 int MemSetTypeFlag (TYPE_4__*,int) ;
 scalar_t__ NEVER (int) ;
 scalar_t__ SMALLEST_INT64 ;
 int SQLITE_AFF_BLOB ;
 int SQLITE_AFF_NUMERIC ;
 int SQLITE_DYNAMIC ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
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
 int assert (int) ;
 int sqlite3AffinityType (char*,int ) ;
 int sqlite3DbFree (int *,char*) ;
 int sqlite3HexToBlob (int *,char*,int) ;
 char* sqlite3MPrintf (int *,char*,char const*,char*) ;
 int sqlite3OomFault (int *) ;
 int sqlite3Strlen30 (char*) ;
 int sqlite3ValueApplyAffinity (TYPE_4__*,int ,int ) ;
 int sqlite3ValueFree (TYPE_4__*) ;
 int sqlite3ValueSetStr (TYPE_4__*,int,char*,int ,int ) ;
 int sqlite3VdbeChangeEncoding (TYPE_4__*,int ) ;
 int sqlite3VdbeMemCast (TYPE_4__*,int ,int ) ;
 int sqlite3VdbeMemNumerify (TYPE_4__*) ;
 int sqlite3VdbeMemSetInt64 (TYPE_4__*,int) ;
 int sqlite3VdbeMemSetStr (TYPE_4__*,int ,int,int ,int ) ;
 int testcase (int) ;
 int valueFromFunction (int *,TYPE_5__*,int ,int ,TYPE_4__**,struct ValueNewStat4Ctx*) ;
 TYPE_4__* valueNew (int *,struct ValueNewStat4Ctx*) ;

__attribute__((used)) static int valueFromExpr(
  sqlite3 *db,
  Expr *pExpr,
  u8 enc,
  u8 affinity,
  sqlite3_value **ppVal,
  struct ValueNewStat4Ctx *pCtx
){
  int op;
  char *zVal = 0;
  sqlite3_value *pVal = 0;
  int negInt = 1;
  const char *zNeg = "";
  int rc = SQLITE_OK;

  assert( pExpr!=0 );
  while( (op = pExpr->op)==TK_UPLUS || op==TK_SPAN ) pExpr = pExpr->pLeft;



  if( NEVER(op==TK_REGISTER) ) op = pExpr->op2;






  assert( (pExpr->flags & EP_TokenOnly)==0 || pCtx==0 );

  if( op==TK_CAST ){
    u8 aff = sqlite3AffinityType(pExpr->u.zToken,0);
    rc = valueFromExpr(db, pExpr->pLeft, enc, aff, ppVal, pCtx);
    testcase( rc!=SQLITE_OK );
    if( *ppVal ){
      sqlite3VdbeMemCast(*ppVal, aff, SQLITE_UTF8);
      sqlite3ValueApplyAffinity(*ppVal, affinity, SQLITE_UTF8);
    }
    return rc;
  }




  if( op==TK_UMINUS
   && (pExpr->pLeft->op==TK_INTEGER || pExpr->pLeft->op==TK_FLOAT) ){
    pExpr = pExpr->pLeft;
    op = pExpr->op;
    negInt = -1;
    zNeg = "-";
  }

  if( op==TK_STRING || op==TK_FLOAT || op==TK_INTEGER ){
    pVal = valueNew(db, pCtx);
    if( pVal==0 ) goto no_mem;
    if( ExprHasProperty(pExpr, EP_IntValue) ){
      sqlite3VdbeMemSetInt64(pVal, (i64)pExpr->u.iValue*negInt);
    }else{
      zVal = sqlite3MPrintf(db, "%s%s", zNeg, pExpr->u.zToken);
      if( zVal==0 ) goto no_mem;
      sqlite3ValueSetStr(pVal, -1, zVal, SQLITE_UTF8, SQLITE_DYNAMIC);
    }
    if( (op==TK_INTEGER || op==TK_FLOAT ) && affinity==SQLITE_AFF_BLOB ){
      sqlite3ValueApplyAffinity(pVal, SQLITE_AFF_NUMERIC, SQLITE_UTF8);
    }else{
      sqlite3ValueApplyAffinity(pVal, affinity, SQLITE_UTF8);
    }
    if( pVal->flags & (MEM_Int|MEM_Real) ) pVal->flags &= ~MEM_Str;
    if( enc!=SQLITE_UTF8 ){
      rc = sqlite3VdbeChangeEncoding(pVal, enc);
    }
  }else if( op==TK_UMINUS ) {

    if( SQLITE_OK==valueFromExpr(db,pExpr->pLeft,enc,affinity,&pVal,pCtx)
     && pVal!=0
    ){
      sqlite3VdbeMemNumerify(pVal);
      if( pVal->flags & MEM_Real ){
        pVal->u.r = -pVal->u.r;
      }else if( pVal->u.i==SMALLEST_INT64 ){
        pVal->u.r = -(double)SMALLEST_INT64;
        MemSetTypeFlag(pVal, MEM_Real);
      }else{
        pVal->u.i = -pVal->u.i;
      }
      sqlite3ValueApplyAffinity(pVal, affinity, enc);
    }
  }else if( op==TK_NULL ){
    pVal = valueNew(db, pCtx);
    if( pVal==0 ) goto no_mem;
    sqlite3VdbeMemNumerify(pVal);
  }

  else if( op==TK_BLOB ){
    int nVal;
    assert( pExpr->u.zToken[0]=='x' || pExpr->u.zToken[0]=='X' );
    assert( pExpr->u.zToken[1]=='\'' );
    pVal = valueNew(db, pCtx);
    if( !pVal ) goto no_mem;
    zVal = &pExpr->u.zToken[2];
    nVal = sqlite3Strlen30(zVal)-1;
    assert( zVal[nVal]=='\'' );
    sqlite3VdbeMemSetStr(pVal, sqlite3HexToBlob(db, zVal, nVal), nVal/2,
                         0, SQLITE_DYNAMIC);
  }
  *ppVal = pVal;
  return rc;

no_mem:



    sqlite3OomFault(db);
  sqlite3DbFree(db, zVal);
  assert( *ppVal==0 );



  assert( pCtx==0 ); sqlite3ValueFree(pVal);

  return SQLITE_NOMEM_BKPT;
}
