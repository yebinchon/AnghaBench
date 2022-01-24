#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int selFlags; scalar_t__ op; int nSelectRow; struct TYPE_6__* pNext; scalar_t__ pLimit; struct TYPE_6__* pPrior; TYPE_1__* pEList; } ;
struct TYPE_5__ {scalar_t__ nExpr; } ;
typedef  int /*<<< orphan*/  SelectDest ;
typedef  TYPE_2__ Select ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int SF_MultiValue ; 
 int SF_Values ; 
 scalar_t__ TK_ALL ; 
 scalar_t__ TK_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
  Parse *pParse,        /* Parsing context */
  Select *p,            /* The right-most of SELECTs to be coded */
  SelectDest *pDest     /* What to do with query results */
){
  Select *pPrior;
  Select *pRightmost = p;
  int nRow = 1;
  int rc = 0;
  FUNC0( p->selFlags & SF_MultiValue );
  do{
    FUNC0( p->selFlags & SF_Values );
    FUNC0( p->op==TK_ALL || (p->op==TK_SELECT && p->pPrior==0) );
    FUNC0( p->pNext==0 || p->pEList->nExpr==p->pNext->pEList->nExpr );
    if( p->pPrior==0 ) break;
    FUNC0( p->pPrior->pNext==p );
    p = p->pPrior;
    nRow++;
  }while(1);
  while( p ){
    pPrior = p->pPrior;
    p->pPrior = 0;
    rc = FUNC1(pParse, p, pDest);
    p->pPrior = pPrior;
    if( rc || pRightmost->pLimit ) break;
    p->nSelectRow = nRow;
    p = p->pNext;
  }
  return rc;
}