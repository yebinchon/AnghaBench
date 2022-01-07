
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef char u8 ;
typedef int sqlite3_value ;
struct TYPE_25__ {int flags; } ;
typedef TYPE_4__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_24__ {char* zToken; } ;
struct TYPE_22__ {TYPE_6__* pList; } ;
struct TYPE_28__ {int op; int iColumn; TYPE_3__ u; int pTab; TYPE_1__ x; } ;
struct TYPE_27__ {TYPE_2__* a; } ;
struct TYPE_26__ {int * pVdbe; int * pReprepare; TYPE_4__* db; } ;
struct TYPE_23__ {TYPE_7__* pExpr; } ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ ExprList ;
typedef TYPE_7__ Expr ;


 scalar_t__ IsVirtual (int ) ;
 int SQLITE_AFF_BLOB ;
 scalar_t__ SQLITE_AFF_TEXT ;
 int SQLITE_EnableQPSG ;
 scalar_t__ SQLITE_TEXT ;
 scalar_t__ TK_COLUMN ;
 int TK_REGISTER ;
 int TK_STRING ;
 int TK_VARIABLE ;
 int assert (int) ;
 TYPE_7__* sqlite3Expr (TYPE_4__*,int,char*) ;
 scalar_t__ sqlite3ExprAffinity (TYPE_7__*) ;
 int sqlite3ExprCodeTarget (TYPE_5__*,TYPE_7__*,int) ;
 TYPE_7__* sqlite3ExprSkipCollate (TYPE_7__*) ;
 int sqlite3GetTempReg (TYPE_5__*) ;
 int sqlite3IsLikeFunction (TYPE_4__*,TYPE_7__*,int*,char*) ;
 scalar_t__ sqlite3Isdigit (char const) ;
 int sqlite3ReleaseTempReg (TYPE_5__*,int) ;
 int sqlite3ValueFree (int *) ;
 int sqlite3VdbeChangeP3 (int *,scalar_t__,int ) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int * sqlite3VdbeGetBoundValue (int *,int,int ) ;
 int sqlite3VdbeSetVarmask (int *,int) ;
 char* sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int isLikeOrGlob(
  Parse *pParse,
  Expr *pExpr,
  Expr **ppPrefix,
  int *pisComplete,
  int *pnoCase
){
  const u8 *z = 0;
  Expr *pRight, *pLeft;
  ExprList *pList;
  int c;
  int cnt;
  char wc[4];
  sqlite3 *db = pParse->db;
  sqlite3_value *pVal = 0;
  int op;
  int rc;

  if( !sqlite3IsLikeFunction(db, pExpr, pnoCase, wc) ){
    return 0;
  }



  pList = pExpr->x.pList;
  pLeft = pList->a[1].pExpr;

  pRight = sqlite3ExprSkipCollate(pList->a[0].pExpr);
  op = pRight->op;
  if( op==TK_VARIABLE && (db->flags & SQLITE_EnableQPSG)==0 ){
    Vdbe *pReprepare = pParse->pReprepare;
    int iCol = pRight->iColumn;
    pVal = sqlite3VdbeGetBoundValue(pReprepare, iCol, SQLITE_AFF_BLOB);
    if( pVal && sqlite3_value_type(pVal)==SQLITE_TEXT ){
      z = sqlite3_value_text(pVal);
    }
    sqlite3VdbeSetVarmask(pParse->pVdbe, iCol);
    assert( pRight->op==TK_VARIABLE || pRight->op==TK_REGISTER );
  }else if( op==TK_STRING ){
    z = (u8*)pRight->u.zToken;
  }
  if( z ){
    if( sqlite3Isdigit(z[0]) || z[0]=='-' ){
      if( pLeft->op!=TK_COLUMN
       || sqlite3ExprAffinity(pLeft)!=SQLITE_AFF_TEXT
       || IsVirtual(pLeft->pTab)
      ){
        sqlite3ValueFree(pVal);
        return 0;
      }
    }


    cnt = 0;
    while( (c=z[cnt])!=0 && c!=wc[0] && c!=wc[1] && c!=wc[2] ){
      cnt++;
      if( c==wc[3] && z[cnt]!=0 ) cnt++;
    }







    if( cnt!=0 && 255!=(u8)z[cnt-1] ){
      Expr *pPrefix;


      *pisComplete = c==wc[0] && z[cnt+1]==0;


      pPrefix = sqlite3Expr(db, TK_STRING, (char*)z);
      if( pPrefix ){
        int iFrom, iTo;
        char *zNew = pPrefix->u.zToken;
        zNew[cnt] = 0;
        for(iFrom=iTo=0; iFrom<cnt; iFrom++){
          if( zNew[iFrom]==wc[3] ) iFrom++;
          zNew[iTo++] = zNew[iFrom];
        }
        zNew[iTo] = 0;
      }
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

  rc = (z!=0);
  sqlite3ValueFree(pVal);
  return rc;
}
