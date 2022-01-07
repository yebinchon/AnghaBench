
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int selFlags; scalar_t__ op; int nSelectRow; struct TYPE_6__* pNext; scalar_t__ pLimit; struct TYPE_6__* pPrior; TYPE_1__* pEList; } ;
struct TYPE_5__ {scalar_t__ nExpr; } ;
typedef int SelectDest ;
typedef TYPE_2__ Select ;
typedef int Parse ;


 int SF_MultiValue ;
 int SF_Values ;
 scalar_t__ TK_ALL ;
 scalar_t__ TK_SELECT ;
 int assert (int) ;
 int sqlite3Select (int *,TYPE_2__*,int *) ;

__attribute__((used)) static int multiSelectValues(
  Parse *pParse,
  Select *p,
  SelectDest *pDest
){
  Select *pPrior;
  Select *pRightmost = p;
  int nRow = 1;
  int rc = 0;
  assert( p->selFlags & SF_MultiValue );
  do{
    assert( p->selFlags & SF_Values );
    assert( p->op==TK_ALL || (p->op==TK_SELECT && p->pPrior==0) );
    assert( p->pNext==0 || p->pEList->nExpr==p->pNext->pEList->nExpr );
    if( p->pPrior==0 ) break;
    assert( p->pPrior->pNext==p );
    p = p->pPrior;
    nRow++;
  }while(1);
  while( p ){
    pPrior = p->pPrior;
    p->pPrior = 0;
    rc = sqlite3Select(pParse, p, pDest);
    p->pPrior = pPrior;
    if( rc || pRightmost->pLimit ) break;
    p->nSelectRow = nRow;
    p = p->pNext;
  }
  return rc;
}
