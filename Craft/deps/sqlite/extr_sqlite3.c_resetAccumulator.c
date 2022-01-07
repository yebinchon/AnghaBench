
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct AggInfo_func {int iDistinct; TYPE_4__* pExpr; int iMem; } ;
typedef int Vdbe ;
struct TYPE_17__ {scalar_t__ nFunc; scalar_t__ nColumn; struct AggInfo_func* aFunc; TYPE_1__* aCol; } ;
struct TYPE_14__ {TYPE_10__* pList; } ;
struct TYPE_16__ {TYPE_2__ x; } ;
struct TYPE_15__ {int * pVdbe; } ;
struct TYPE_13__ {int iMem; } ;
struct TYPE_12__ {int nExpr; } ;
typedef TYPE_3__ Parse ;
typedef int KeyInfo ;
typedef TYPE_4__ Expr ;
typedef TYPE_5__ AggInfo ;


 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_4__*,int ) ;
 int OP_Null ;
 int OP_OpenEphemeral ;
 int P4_KEYINFO_HANDOFF ;
 int assert (int) ;
 int * keyInfoFromExprList (TYPE_3__*,TYPE_10__*) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*) ;
 int sqlite3VdbeAddOp2 (int *,int ,int ,int ) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,char*,int ) ;

__attribute__((used)) static void resetAccumulator(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  struct AggInfo_func *pFunc;
  if( pAggInfo->nFunc+pAggInfo->nColumn==0 ){
    return;
  }
  for(i=0; i<pAggInfo->nColumn; i++){
    sqlite3VdbeAddOp2(v, OP_Null, 0, pAggInfo->aCol[i].iMem);
  }
  for(pFunc=pAggInfo->aFunc, i=0; i<pAggInfo->nFunc; i++, pFunc++){
    sqlite3VdbeAddOp2(v, OP_Null, 0, pFunc->iMem);
    if( pFunc->iDistinct>=0 ){
      Expr *pE = pFunc->pExpr;
      assert( !ExprHasProperty(pE, EP_xIsSelect) );
      if( pE->x.pList==0 || pE->x.pList->nExpr!=1 ){
        sqlite3ErrorMsg(pParse, "DISTINCT aggregates must have exactly one "
           "argument");
        pFunc->iDistinct = -1;
      }else{
        KeyInfo *pKeyInfo = keyInfoFromExprList(pParse, pE->x.pList);
        sqlite3VdbeAddOp4(v, OP_OpenEphemeral, pFunc->iDistinct, 0, 0,
                          (char*)pKeyInfo, P4_KEYINFO_HANDOFF);
      }
    }
  }
}
