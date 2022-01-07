
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pEList; struct TYPE_7__* pPrior; } ;
struct TYPE_6__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_5__ {int pExpr; } ;
typedef TYPE_3__ Select ;
typedef int Parse ;
typedef int CollSeq ;


 int assert (int) ;
 int * sqlite3ExprCollSeq (int *,int ) ;

__attribute__((used)) static CollSeq *multiSelectCollSeq(Parse *pParse, Select *p, int iCol){
  CollSeq *pRet;
  if( p->pPrior ){
    pRet = multiSelectCollSeq(pParse, p->pPrior, iCol);
  }else{
    pRet = 0;
  }
  assert( iCol>=0 );
  if( pRet==0 && iCol<p->pEList->nExpr ){
    pRet = sqlite3ExprCollSeq(pParse, p->pEList->a[iCol].pExpr);
  }
  return pRet;
}
