
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_value ;
typedef int sqlite3 ;
typedef int Vdbe ;
struct TYPE_19__ {char* zToken; } ;
struct TYPE_17__ {TYPE_5__* pList; } ;
struct TYPE_22__ {scalar_t__ op; int iColumn; int op2; TYPE_3__ u; int pTab; TYPE_1__ x; } ;
struct TYPE_21__ {TYPE_2__* a; } ;
struct TYPE_20__ {int * pVdbe; int * pReprepare; int * db; } ;
struct TYPE_18__ {TYPE_6__* pExpr; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ ExprList ;
typedef TYPE_6__ Expr ;


 scalar_t__ IsVirtual (int ) ;
 int SQLITE_AFF_NONE ;
 scalar_t__ SQLITE_AFF_TEXT ;
 scalar_t__ SQLITE_TEXT ;
 scalar_t__ TK_COLUMN ;
 int TK_REGISTER ;
 int TK_STRING ;
 int TK_VARIABLE ;
 int assert (int) ;
 TYPE_6__* sqlite3Expr (int *,int,char const*) ;
 scalar_t__ sqlite3ExprAffinity (TYPE_6__*) ;
 int sqlite3ExprCodeTarget (TYPE_4__*,TYPE_6__*,int) ;
 int sqlite3GetTempReg (TYPE_4__*) ;
 int sqlite3IsLikeFunction (int *,TYPE_6__*,int*,char*) ;
 int sqlite3ReleaseTempReg (TYPE_4__*,int) ;
 int sqlite3ValueFree (int *) ;
 int sqlite3VdbeChangeP3 (int *,scalar_t__,int ) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int * sqlite3VdbeGetValue (int *,int,int ) ;
 int sqlite3VdbeSetVarmask (int *,int) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int isLikeOrGlob(
  Parse *pParse,
  Expr *pExpr,
  Expr **ppPrefix,
  int *pisComplete,
  int *pnoCase
){
  const char *z = 0;
  Expr *pRight, *pLeft;
  ExprList *pList;
  int c;
  int cnt;
  char wc[3];
  sqlite3 *db = pParse->db;
  sqlite3_value *pVal = 0;
  int op;

  if( !sqlite3IsLikeFunction(db, pExpr, pnoCase, wc) ){
    return 0;
  }



  pList = pExpr->x.pList;
  pLeft = pList->a[1].pExpr;
  if( pLeft->op!=TK_COLUMN
   || sqlite3ExprAffinity(pLeft)!=SQLITE_AFF_TEXT
   || IsVirtual(pLeft->pTab)
  ){


    return 0;
  }
  assert( pLeft->iColumn!=(-1) );

  pRight = pList->a[0].pExpr;
  op = pRight->op;
  if( op==TK_REGISTER ){
    op = pRight->op2;
  }
  if( op==TK_VARIABLE ){
    Vdbe *pReprepare = pParse->pReprepare;
    int iCol = pRight->iColumn;
    pVal = sqlite3VdbeGetValue(pReprepare, iCol, SQLITE_AFF_NONE);
    if( pVal && sqlite3_value_type(pVal)==SQLITE_TEXT ){
      z = (char *)sqlite3_value_text(pVal);
    }
    sqlite3VdbeSetVarmask(pParse->pVdbe, iCol);
    assert( pRight->op==TK_VARIABLE || pRight->op==TK_REGISTER );
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
      pPrefix = sqlite3Expr(db, TK_STRING, z);
      if( pPrefix ) pPrefix->u.zToken[cnt] = 0;
      *ppPrefix = pPrefix;
      if( op==TK_VARIABLE ){
        Vdbe *v = pParse->pVdbe;
        sqlite3VdbeSetVarmask(v, pRight->iColumn);
        if( *pisComplete && pRight->u.zToken[1] ){






          int r1 = sqlite3GetTempReg(pParse);
          sqlite3ExprCodeTarget(pParse, pRight, r1);
          sqlite3VdbeChangeP3(v, sqlite3VdbeCurrentAddr(v)-1, 0);
          sqlite3ReleaseTempReg(pParse, r1);
        }
      }
    }else{
      z = 0;
    }
  }

  sqlite3ValueFree(pVal);
  return (z!=0);
}
