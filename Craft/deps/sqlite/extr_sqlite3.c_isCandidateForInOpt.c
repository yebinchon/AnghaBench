
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pSelect; } ;
typedef TYPE_4__ Table ;
struct TYPE_16__ {int nExpr; TYPE_3__* a; } ;
struct TYPE_15__ {int selFlags; scalar_t__ pGroupBy; scalar_t__ pOffset; TYPE_7__* pEList; TYPE_5__* pSrc; scalar_t__ pWhere; scalar_t__ pLimit; scalar_t__ pPrior; } ;
struct TYPE_14__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_12__ {TYPE_2__* pExpr; } ;
struct TYPE_11__ {scalar_t__ op; } ;
struct TYPE_10__ {TYPE_4__* pTab; scalar_t__ pSelect; } ;
typedef TYPE_5__ SrcList ;
typedef TYPE_6__ Select ;
typedef TYPE_7__ ExprList ;


 scalar_t__ IsVirtual (TYPE_4__*) ;
 scalar_t__ NEVER (int) ;
 int SF_Aggregate ;
 int SF_Distinct ;
 scalar_t__ TK_COLUMN ;
 int assert (int) ;
 int testcase (int) ;

__attribute__((used)) static int isCandidateForInOpt(Select *p){
  SrcList *pSrc;
  ExprList *pEList;
  Table *pTab;
  if( p==0 ) return 0;
  if( p->pPrior ) return 0;
  if( p->selFlags & (SF_Distinct|SF_Aggregate) ){
    testcase( (p->selFlags & (SF_Distinct|SF_Aggregate))==SF_Distinct );
    testcase( (p->selFlags & (SF_Distinct|SF_Aggregate))==SF_Aggregate );
    return 0;
  }
  assert( p->pGroupBy==0 );
  if( p->pLimit ) return 0;
  assert( p->pOffset==0 );
  if( p->pWhere ) return 0;
  pSrc = p->pSrc;
  assert( pSrc!=0 );
  if( pSrc->nSrc!=1 ) return 0;
  if( pSrc->a[0].pSelect ) return 0;
  pTab = pSrc->a[0].pTab;
  if( NEVER(pTab==0) ) return 0;
  assert( pTab->pSelect==0 );
  if( IsVirtual(pTab) ) return 0;
  pEList = p->pEList;
  if( pEList->nExpr!=1 ) return 0;
  if( pEList->a[0].pExpr->op!=TK_COLUMN ) return 0;
  return 1;
}
